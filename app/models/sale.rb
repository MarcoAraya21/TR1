class Sale < ActiveRecord::Base
  belongs_to :user
  has_many :Details
end
