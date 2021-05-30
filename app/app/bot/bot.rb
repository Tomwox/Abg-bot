
require 'facebook/messenger'
include Facebook::Messenger

VERIFY_TOKEN = ENV["VERIFY_TOKEN"]

Facebook::Messenger::Subscriptions.subscribe(
  access_token: ENV["ACCESS_TOKEN"],
  subscribed_fields: %w[messages messaging_postbacks]
)

Facebook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end