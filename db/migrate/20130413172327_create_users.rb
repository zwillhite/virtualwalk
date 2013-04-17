class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :crypted_password
      t.integer :team_id

      t.timestamps
    end
  end
end
