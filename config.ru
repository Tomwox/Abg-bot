# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
require 'facebook/messenger'
require_relative 'bot'

run Facebook::Messenger::Server
run Rails.application
Rails.application.load_server
