class AddVideoToRestaurant < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :video_code, :string
  end

  def self.down
    remove_column :restaurants, :video_code
  end
end
