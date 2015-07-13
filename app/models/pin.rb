class Pin < ActiveRecord::Base
	belongs_to :user

	# add default url later when image is missing
	# go to paperclip gem github
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	validates :image, presence: true
  validates :description, presence: true
end
