class Location < ApplicationRecord
	has_many :devices
	
	def Location.orderdept
		Location.order('department ASC')
		end
end
