class AddViewsCountToRestaurant < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :views_count, :string
  end

  def self.down
    remove_column :restaurants, :views_count
  end
end
