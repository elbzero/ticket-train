class CreateWorkLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :work_logs do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :billable_hours
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
