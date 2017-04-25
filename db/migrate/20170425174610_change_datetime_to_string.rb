class ChangeDatetimeToString < ActiveRecord::Migration[5.0]
  def change
    change_column :dives, :datetime, :string
  end
end
