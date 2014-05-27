class Grave < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :base_materials
	has_and_belongs_to_many :directions
	has_and_belongs_to_many :epitaphs
	has_many :famnames
	has_and_belongs_to_many :marker_conditions
	has_and_belongs_to_many :marker_materials
	has_and_belongs_to_many :marker_types
	has_attached_file :mainpic, :styles => { small: "100x100>", medium: "250x250>" }

  validates_attachment_content_type :mainpic, :content_type =>
  ["image/jpg", "image/jpeg", "image/png"]
end
