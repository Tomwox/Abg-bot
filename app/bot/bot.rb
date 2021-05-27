
require 'facebook/messenger'
include Facebook::Messenger

VERIFY_TOKEN = 'loulou'

get '/' do
  mode = params['hub.mode']
  verify_token = params['hub.verify_token']
  challenge = params['hub.challenge']

  if mode == 'subscribe' && verify_token == VERIFY_TOKEN
    challenge
  else
    halt 401
  end
end

Faceboook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end