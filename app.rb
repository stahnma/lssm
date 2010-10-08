#!/usr/bin/env ruby 
#
require 'sinatra'
require 'erb'

enable :sessions

get '/' do 
  erb :login
end


post '/login' do 
  p params
  session['username'] = params['login']
  #session
end
