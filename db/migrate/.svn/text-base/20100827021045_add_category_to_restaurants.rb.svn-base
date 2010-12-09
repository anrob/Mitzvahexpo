class AddCategoryToRestaurants < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :category, :string
    add_column :restaurants, :subcategory, :string
    add_column :restaurants, :fax, :string
  end

  def self.down
    remove_column :restaurants, :fax
    remove_column :restaurants, :subcategory
    remove_column :restaurants, :category
  end
end
