class Diver < ActiveRecord::Base
  has_many :dives
  has_many :locations, through: :dives
  validates_presence_of :name, :email, :password, :password_confirmation
  validates :password, :confirmation => true
  has_secure_password
end