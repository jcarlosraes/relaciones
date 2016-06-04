class Renovation < ApplicationRecord
	belongs_to :contract
	has_many :siteviews
end
