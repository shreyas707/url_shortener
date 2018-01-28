class Url < ActiveRecord::Base

	validates_uniqueness_of :shortened_url
	validates_presence_of :url

	before_save :fix_url

	def fix_url

		if !self.url.include?("http") && !self.url.include?("www")
			self.url = "http://www." + self.url
		elsif !self.url.include?("http")
			self.url = "http://" + self.url
		end
	end

end