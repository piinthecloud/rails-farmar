class Vendor < ActiveRecord::Base
  validates :name, :market_id, :location, presence: true
end
