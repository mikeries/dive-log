class Dive < ActiveRecord::Base
  belongs_to :diver
  belongs_to :location
  validates_presence_of :datetime, :duration, :max_depth, :starting_pressure,
                        :final_pressure
  validates :duration, :ballast, :max_depth, :starting_pressure, :final_pressure,
            :numericality => true
end
