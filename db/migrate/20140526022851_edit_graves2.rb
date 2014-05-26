class EditGraves2 < ActiveRecord::Migration
  def change
  	add_column :graves, :block, :integer
  	add_column :graves, :lot, :integer
  	add_column :graves, :site, :integer
  	add_column :graves, :marker_on, :string
  	add_column :graves, :condition, :string
  	add_column :graves, :design, :string
  	add_column :graves, :carver_name, :string
  	add_column :graves, :carver_city, :string
  	add_column :graves, :carver_location, :string
  	add_column :graves, :epitaph_condition, :string
  	add_column :graves, :epitaph_transcription, :text
  	add_column :graves, :comments, :text
  	add_column :graves, :survey_date, :date
  end
end
