class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :user, index: true, foreign_key: true
      t.date :start_time
      t.date :end_time
      t.date :date_schedule

      t.timestamps null: false
    end
  end
end
