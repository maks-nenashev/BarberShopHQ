class CreateClients < ActiveRecord::Migration[7.0]
  def change
  
    create_table :client do |t|
    t.text :name
    t.text :phone               # W tablice "client" budet sozdany t
    t.text :datestamp
    t.text :barber
    t.text :color

    t.timestamps # ((created_at vs updated_at)) "Sozdanie stolbca s datoy sozdanija i datoy wpisa"
  end
 end
end