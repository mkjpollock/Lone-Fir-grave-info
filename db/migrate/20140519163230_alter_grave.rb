class AlterGrave < ActiveRecord::Migration
  def change
  	rename_table :grave, :graves
  end
end
