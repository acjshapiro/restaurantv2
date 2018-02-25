require 'sinatra/base'

ENV['RACK_ENV'] ||= 'development'
require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

class Food < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions
end

set :views, Proc.new {File.join(root, "views")}
