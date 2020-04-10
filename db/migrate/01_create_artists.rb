class CreateArtists < ActiveRecord::Migration[4.2]
    def change
      create_table :artists do |t|
        t.string :name
        t.string :genre
        t.integer :age
        t.string :hometown
      end
    end


    class AddFavoriteFoodToArtists < ActiveRecord::Migration[4.2]
        def change
          add_column :artists, :favorite_food, :string
        end
    end

  end