#!/usr/bin/env ruby 
#
require 'sinatra'
require 'erb'

enable :sessions

get '/' do 
  puts session['username']
  unless session['username']
    redirect '/login'
  end
end

get '/login' do 
  erb :login
end

post '/login' do 
  
  #p params
  session['username'] = params['login']
  session['password'] = params['password']
  # perform authentication
  session.to_s
end

get '/logout' do
  session.each  do |k, v|
    session[k] = nil
  end
  session = nil
end
