class CreateActionItems < ActiveRecord::Migration[7.0]
  def change
    create_table :action_items do |t|
      t.string :title
      t.text :description
      t.references :phase, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.date :start_date
      t.date :due_date
      t.date :completed_date
      t.text :content

      t.timestamps
    end
  end
end
