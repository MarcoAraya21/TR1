class Recourse < ActiveRecord::Base
  belongs_to :reparation
  belongs_to :product
end
