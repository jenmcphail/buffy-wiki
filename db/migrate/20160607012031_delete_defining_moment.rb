class DeleteDefiningMoment < ActiveRecord::Migration
  def change
  	remove_column :characters, :defining_moment
  end
end
