class Product < ActiveRecord::Base
	has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
	validates :cover, presence: true
	validates :title, presence: true
	validates :description, presence: true
	

end
