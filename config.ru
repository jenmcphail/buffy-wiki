require 'rubygems'
require 'bundler'
Bundler.require

require './models/character'
require './app'
require 'sinatra/flash'

use Rack::MethodOverride

run BuffyWiki