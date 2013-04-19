class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :personal_goal
      t.integer :user_id
      t.integer :event_id
      t.integer :team_id

      t.timestamps
    end
  end
end
