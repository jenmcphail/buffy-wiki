class ChangeSeasonsStringToArray < ActiveRecord::Migration
  def change
  	remove_column :characters, :season
  end
end
