
require 'facebook/messenger'
include Facebook::Messenger

VERIFY_TOKEN = ENV["VERIFY_TOKEN"]
puts VERIFY_TOKEN

APP_SECRET = ENV["APP_SECRET"]
puts APP_SECRET

Facebook::Messenger::Subscriptions.subscribe(
  access_token: ENV["ACCESS_TOKEN"],
  subscribed_fields: %w[messages messaging_postbacks]
)

ACCESS_TOKEN = ENV["ACCESS_TOKEN"]
puts ACCESS_TOKEN

Facebook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end