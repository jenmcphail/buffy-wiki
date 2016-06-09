class AddSeasonColumns < ActiveRecord::Migration
  def change
  	add_column :characters, :season1, :boolean, :default => false
  	add_column :characters, :season2, :boolean, :default => false
  	add_column :characters, :season3, :boolean, :default => false
  	add_column :characters, :season4, :boolean, :default => false
  	add_column :characters, :season5, :boolean, :default => false
  	add_column :characters, :season6, :boolean, :default => false
  	add_column :characters, :season7, :boolean, :default => false
  end
end
