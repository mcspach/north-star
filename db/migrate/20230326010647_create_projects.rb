class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.boolean :completed
      t.date :start_date

      t.timestamps
    end
  end
end
