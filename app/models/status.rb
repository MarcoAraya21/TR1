class Status < ActiveRecord::Base
	has_many :products
	has_many :cproducts
end
