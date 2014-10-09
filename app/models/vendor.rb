class Vendor < ActiveRecord::Base

  has_many :products


  validates :name, :market_id, :location, presence: true

end
