require 'sinatra/base'

ENV['RACK_ENV'] ||= 'development'
require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym
require_relative 'routes'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require './models/app'

class Meat < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions
  register Sinatra::ActiveRecordExtension
  use Rack::MethodOverride
end

set :views, Proc.new {File.join(root, "views")}
