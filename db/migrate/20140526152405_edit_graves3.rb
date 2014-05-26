class EditGraves3 < ActiveRecord::Migration
  def change
  	add_column :graves, :foundation, :string
  	add_column :graves, :priority, :string
  	add_column :graves, :treatment, :string
  	remove_column :graves, :description
  	remove_column :graves, :marker_on
  end
end
