class RenameTypeToCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :locations, :type, :category
  end
end
