
class CreateBarbers < ActiveRecord::Migration[7.0]
  def change
  
  create_table :barbers do |t|
    t.text :name
         # W tablice "client" budet sozdany t
    
    t.timestamps# ((created_at vs updated_at)) "Sozdanie stolbca s datoy sozdanija i datoy wpisa"
  end
   
   Barber.create :name => 'Jessy Pinknam'
   Barber.create :name => 'Walter White'  # Napolnenie tablicy
   Barber.create :name => 'Gus Fring'   
   
   end
 end
                                      #_barber
# (rake db:create_migration NAME=create_clients) <Code dla sozdanija faila s bazami danyh db>

#Barber.create  --zapis w bazu

# b = Barber.naw :name => 'Maks Belou' --zapis w pamiat
# b.sawe --wyzow iz pamiaty

