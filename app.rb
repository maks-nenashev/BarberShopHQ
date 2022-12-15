#encoding: utf-8
require 'rubygems'
require 'sqlite3'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
                                     
                           #Sozdanie bazy dannyh

set :database, {adapter: "sqlite3", database: "barbershop.db"}
#set :database, "sqlite3:barbershop.db" #Sozdanie bazy dannyh

# (rake db:create_migration NAME=create_clients) <Code dla sozdanija faila s bazami danyh db>
class Client < ActiveRecord::Base    #Sozdanie susznosti 
 end

# (rake db:create_migration NAME=create_barbers) <Code dla sozdanija faila s bazami danyh db>
class Barber < ActiveRecord::Base    #Sozdanie susznosti 
 end
                    #Wywod spiska parikmaherow
before do          #wwerh nogami "method order"
    @barbers = Barber.order "created_at DESC" #Barber.all 
  end

get '/' do
   erb :index
  end

get "/visit" do
   erb :visit  #podkluczenie fila HTML
  end

post "/visit" do
    
   c = Client.new params[:client]
   c.save

    erb "Spasibo wy zapisalis!"
  end