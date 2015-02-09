require './app.rb'
require 'sinatra'
require 'grape'
require 'tzinfo'


run Rack::Cascade.new [DNT::APIv1, DNT::Web]
