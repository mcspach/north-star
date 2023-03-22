class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :title
      t.string :string
      t.string :email
      t.string :phone
      t.integer :access

      t.timestamps
    end
  end
end
