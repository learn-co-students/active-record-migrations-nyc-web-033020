class CreateArtists < ActiveRecord::Migration[5.2]
  def up #<-- like "do"
  end
 
  def down #<-- like "undo"
  end

  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end

end