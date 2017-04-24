class CreateDivers < ActiveRecord::Migration[5.0]
  def change
    create_table :divers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
    end
  end
end
