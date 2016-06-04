class Contract < ApplicationRecord
	belongs_to :supplier
	belongs_to :device
	has_many :renovations
end
