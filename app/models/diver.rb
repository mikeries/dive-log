class Diver < ActiveRecord::Base
  has_many :dives
  has_many :locations, through: :dives
  has_secure_password
end