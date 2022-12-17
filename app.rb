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
    validates :name, presence: true
    validates :phone, presence: true, length: {minimum: 3} #Walidacija!!!
    validates :datestamp, presence: true
    validates :color, presence: true
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
   @c = Client.new #Bez etoj global peremennoj ne budet otkryt ":visit"
   erb :visit  #podkluczenie fila HTML
  end

post "/visit" do
   @c = Client.new params[:client]
   if @c.save
      
   erb "<h2>Spasibo wy zapisalis!</h2>"
   
   else
     @error = @c.errors.full_messages.first  #Wywod "Walidacii"
   erb :visit
     #erb "<h2>Bag!</h2>"
    end
   end

get "/barber/:id" do   #Podkluczenie i wywod barberow
   @barber = Barber.find(params[:id])  
   erb :barber
  end

get "/bookings" do   #podkluczenie i wywod imen zapisawchihsa
   @clients = Client.all#order('created_at DESC') #order('created_at DESC')Imena s poslednego zapisawchego
   erb :bookings
  end

get "/client/:id" do   #Podkluczenie i wywod barberow
    @client = Client.find(params[:id])  
    erb :client
  end