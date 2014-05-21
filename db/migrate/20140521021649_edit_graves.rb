class EditGraves < ActiveRecord::Migration
  def change
  	add_column :graves, :user_id, :integer
  end
end
