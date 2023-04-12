class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :title, :string
    add_reference :users, :project, foreign_key: true
    add_column :users, :access_level, :string
    add_column :users, :user_type, :string
  end
end
