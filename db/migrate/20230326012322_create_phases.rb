class CreatePhases < ActiveRecord::Migration[7.0]
  def change
    create_table :phases do |t|
      t.string :title
      t.text :description
      t.references :project, null: false, foreign_key: true
      t.string :start_date
      t.string :date
      t.date :due_date
      t.date :completed_date
      t.boolean :completed

      t.timestamps
    end
  end
end
