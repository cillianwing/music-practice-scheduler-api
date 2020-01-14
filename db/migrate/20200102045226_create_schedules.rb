class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
    	t.string :title
    	t.string :practice_days
    	t.integer :practice_time
    	t.string :instrument
    	t.string :practice_areas
      t.timestamps
    end
  end
end
