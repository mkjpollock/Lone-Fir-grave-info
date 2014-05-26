class RemoveEpithaphColumnsGravesAddNewTable < ActiveRecord::Migration
  def change
  	remove_column :graves, :epitaph_condition
  	remove_column :graves, :epitaph_transcription
  end
  create_table :epitaphs do |t|
  	t.string :direction
  	t.string :condition
  	t.text :description
  	t.timestamps
  end
end
