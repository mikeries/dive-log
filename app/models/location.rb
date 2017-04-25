class Location < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  has_many :dives
  has_many :locations, through: :dives
  validates_presence_of :name, :city, :country
end