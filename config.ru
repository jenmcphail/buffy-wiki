require 'rubygems'
require 'bundler'
Bundler.require

require './models/character'
require './app'
require 'sinatra/flash'

# enable :sessions
# register Sinatra::Flash

use Rack::MethodOverride

run BuffyWiki