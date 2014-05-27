class EditMarkerTypes < ActiveRecord::Migration
  def change
  	remove_column :marker_types, :base
  	add_column :marker_types, :marker_on, :string
  end
end
