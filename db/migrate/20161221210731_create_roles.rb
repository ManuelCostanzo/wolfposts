class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name, null:false, length: 2..15

      t.timestamps
    end
    add_index :roles, :name, unique: true
  end
end
