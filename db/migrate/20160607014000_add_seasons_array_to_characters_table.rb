class AddSeasonsArrayToCharactersTable < ActiveRecord::Migration
  def change
  	add_column :characters, :seasons, :string
  end
end
