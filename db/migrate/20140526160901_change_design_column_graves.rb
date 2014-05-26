class ChangeDesignColumnGraves < ActiveRecord::Migration
  def change
  	remove_column :graves, :design
  	add_column :graves, :design, :text
  end
end
