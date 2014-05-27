class CreateJoinTables < ActiveRecord::Migration
  def change
  	create_table :base_materials_graves, id: false do |t|
  	  t.belongs_to :grave
  	  t.belongs_to :base_material
  	end
  	create_table :directions_graves, id: false do |t|
  	  t.belongs_to :grave
  	  t.belongs_to :direction
  	end
  	create_table :epitaphs_graves, id: false do |t|
  	  t.belongs_to :grave
  	  t.belongs_to :epitaph
  	end
  	create_table :graves_marker_conditions, id: false do |t|
  	  t.belongs_to :grave
  	  t.belongs_to :marker_condition
  	end
  	create_table :graves_marker_materials, id: false do |t|
  	  t.belongs_to :grave
  	  t.belongs_to :marker_material
  	end
  	create_table :graves_marker_types, id: false do |t|
  	  t.belongs_to :grave
  	  t.belongs_to :marker_type
  	end
  end
end
