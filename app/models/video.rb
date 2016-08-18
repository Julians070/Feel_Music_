class Video < ActiveRecord::Base
	before_save :code
	def code
	self.url = 	self.url.split('/').last if self.url 
	end

end
