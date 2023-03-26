class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :phone
      t.integer :access
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
