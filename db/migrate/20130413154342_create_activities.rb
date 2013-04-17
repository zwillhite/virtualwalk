class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.decimal :distance
      t.datetime :activity_date
      t.boolean :manual
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
