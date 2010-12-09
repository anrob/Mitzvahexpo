class AddTitleToVideo < ActiveRecord::Migration
  def self.up
    add_column :videos, :title, :string
    add_column :videos, :thumburl, :string
  end

  def self.down
    remove_column :videos, :thumburl
    remove_column :videos, :title
  end
end
