class Order < ApplicationRecord
	belongs_to :product
	has_many :product
end