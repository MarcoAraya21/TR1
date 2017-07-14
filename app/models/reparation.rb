class Reparation < ActiveRecord::Base
  belongs_to :user
  belongs_to :cproduct
  has_many :recourses
end
