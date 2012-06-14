#!/usr/bin/env ruby
#
require 'sinatra'
require 'erb'

enable :sessions

set :erb, :trim => '-'

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
#  :username = params['login']
  session['password'] = params['password']
#  :password = params['password']
  # perform authentication
  # session.to_s
  redirect '/:username/edit'
end

get "/:username/edit" do
  # find my ldap record
end

get '/logout' do
  session.each  do |k, v|
    session[k] = nil
  end
  session = nil
end
