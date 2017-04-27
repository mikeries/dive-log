class Location < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  has_many :dives
  has_many :divers, through: :dives
  validates_presence_of :name, :city, :country
  validates_uniqueness_of :name, :if => :new_record?
end