
class CreateBarbers < ActiveRecord::Migration[7.0]
  def change
  
  create_table :barbers do |t|
    t.text :name
         # W tablice "client" budet sozdany t
    
    t.timestamps# ((created_at vs updated_at)) "Sozdanie stolbca s datoy sozdanija i datoy wpisa"
  end
   
   Barber.create :name => 'Jessy Pinknam'
   Barber.create :name => 'Walter White'
   Barber.create :name => 'Gus Fring'   
   
   end
 end
