class AddCleaningToGraves < ActiveRecord::Migration
  def change
  	add_column :graves, :cleaning, :string
  end
end
