class AddVotesColumn < ActiveRecord::Migration
  def change
  	add_column :characters, :votes, :integer, :default => 0
  end
end
