# db/migrate/01_create_artists.rb

class CreateArtists < ActiveRecord::Migration[5.2]
                      # IMPORTANT: Active Record is primarily used in Rails applications 
                      # and as of Active Record [5.x], we must specify which version of Rails 
                      # the migration was written for, even in situations like this lab 
                      # where we do not have Rails configured.
    
    def up  # defines the code to execute when the migration is run (aka - DONE)
    end
   
    def down  # define the code to execute when the migration is rolled back (aka - UNDONE)
    end

    def change  # commonly used for basic migrations where Active Record knows how to reverse the migration automatically
        create_table :artists do |t|  # With Active Record installed in environment.rb, we can create tables with an iteration
            t.string :name  # creates name column and sets it to a string value
            t.string :genre
            t.integer :age  # creates an age colunn and sets it to an integer value
            t.string :hometown
        end
    end
    
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS artists (
        id INTEGER PRIMARY KEY,
        name TEXT,
        genre TEXT,
        age INTEGER,
        hometown TEXT
    )
    SQL
 
ActiveRecord::Base.connection.execute(sql)

  end