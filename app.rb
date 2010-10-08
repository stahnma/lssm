#!/usr/bin/env ruby 
#
require 'sinatra'
require 'erb'


get '/' do 
  erb :login
end
