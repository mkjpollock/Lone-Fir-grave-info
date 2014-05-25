class Grave < ActiveRecord::Base
	belongs_to :user
	has_attached_file :mainpic, :styles => { small: "100x100>", medium: "250x250>" }

  validates_attachment_content_type :mainpic, :content_type =>
  ["image/jpg", "image/jpeg", "image/png"]
end
