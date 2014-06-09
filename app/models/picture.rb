class Picture < ActiveRecord::Base
	belongs_to :grave

	has_attached_file :image, :styles => { small: "100x100>", medium: "250x250>", large: "650x450"  }

  validates_attachment_content_type :image, :content_type =>
  ["image/jpg", "image/jpeg", "image/png"]
end
