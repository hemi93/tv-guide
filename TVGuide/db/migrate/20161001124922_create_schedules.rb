class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.integer :show_id
      t.datetime :date

      t.timestamps
    end
    add_index :schedules, :show_id
  end
end
