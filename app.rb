#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db" #Sozdanie bazy dannyh

# (rake db:create_migration NAME=create_clients) <Code dla sozdanija faila s bazami danyh db>
class Client < ActiveRecord::Base    #Sozdanie susznosti 
 end

# (rake db:create_migration NAME=create_barbers) <Code dla sozdanija faila s bazami danyh db>
class Barber < ActiveRecord::Base 
 end

get '/' do
	erb "Hello"
end