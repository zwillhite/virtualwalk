class CreateEventsUsers < ActiveRecord::Migration
  def up
    create_table :registration, :id => false do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :personal_goal
    end
  end

  def down
    drop_table :registration
  end
end
