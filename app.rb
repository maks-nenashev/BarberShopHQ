#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db" #Sozdanie bazy dannyh

class Client < ActiveRecord::Base    #Sozdanie susznosti
 end

get '/' do
	erb "Hello"
end