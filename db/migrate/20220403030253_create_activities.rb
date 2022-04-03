class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.date :work_day
      t.text :description
      t.time :start_time
      t.time :end_time
      t.references :project, null: false, foreign_key: true
      t.references :score, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
