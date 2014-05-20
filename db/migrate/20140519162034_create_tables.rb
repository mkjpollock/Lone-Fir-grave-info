class CreateTables < ActiveRecord::Migration
  def change
    create_table :grave do |t|
    	t.attachment :mainpic
    	t.string :name
    	t.text :description
    	t.timestamps
    end
  end
end
