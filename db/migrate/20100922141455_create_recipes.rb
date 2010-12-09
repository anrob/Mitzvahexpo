class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :name
      t.string :prep_time
      t.string :ready_time
      t.string :serving
      t.text :ingredient
      t.text :direction
      t.timestamps
    end
  end
  
  def self.down
    drop_table :recipes
  end
end
