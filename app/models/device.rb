class Device < ApplicationRecord
    belongs_to :location
    has_many :contracts
    validates :location,  presence: true
    validates :name, presence: true
    validates :unam_stock_number, presence: true
end
