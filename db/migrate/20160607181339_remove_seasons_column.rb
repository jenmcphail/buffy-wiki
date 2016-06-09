class RemoveSeasonsColumn < ActiveRecord::Migration
  def change
  	remove_column :characters, :seasons
  end
end
