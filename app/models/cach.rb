class Cach < ActiveRecord::Base
  belongs_to :server

  has_many :user_cach
end
