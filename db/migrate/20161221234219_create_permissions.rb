class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.string :name, null:false
      t.string :subject_class, null: false
      t.string :action, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
