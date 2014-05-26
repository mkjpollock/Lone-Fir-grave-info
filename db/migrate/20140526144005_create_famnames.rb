class CreateFamnames < ActiveRecord::Migration
  def change
    create_table :famnames do |t|
    	t.string :name
    	t.integer :grave_id
    	t.timestamps
    end
    create_table :marker_types do |t|
    	t.string :description
    	t.string :base
    	t.timestamps
 	  end
 	  create_table :marker_materials do |t|
    	t.string :description
    	t.timestamps
    end
    create_table :base_materials do |t|
     	t.string :description
     	t.timestamps
    end
    create_table :marker_conditions do |t|
     	t.string :description
     	t.integer :broken_number
     	t.timestamps
    end
    create_table :directions do |t|
    	t.string :description
    	t.timestamps
    end  
  end
end
