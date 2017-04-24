class Dive < ActiveRecord::Base
  belongs_to :diver
  belongs_to :location
end
