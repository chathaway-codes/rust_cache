class Cache < ActiveRecord::Base
  belongs_to :server
  belongs_to :location
end
