class CreateDives < ActiveRecord::Migration[5.0]
  def change 
    create_table :dives do |t|
      t.integer :diver_id
      t.integer :location_id
      t.datetime :datetime
      t.integer :duration
      t.integer :ballast
      t.integer :max_depth
      t.integer :starting_pressure
      t.integer :final_pressure
      t.string :comments
    end
  end
end
