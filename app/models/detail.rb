class Detail < ActiveRecord::Base
  belongs_to :sale
  belongs_to :product
  validates :Cantidad,format:{with: /(\A[1-9]{1}\z)/,:message=>"de 1 a 9"}


end
