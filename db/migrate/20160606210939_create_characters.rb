class CreateCharacters < ActiveRecord::Migration
  def change
  	create_table :characters do |t|
  		t.string :name
  		t.string :image_url
  		t.string :description
  		t.string :defining_moment
  		t.string :season
  		t.string :type
  		t.timestamps
  	end
  end
end
