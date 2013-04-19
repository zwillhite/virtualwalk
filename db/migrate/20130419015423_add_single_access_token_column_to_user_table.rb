class AddSingleAccessTokenColumnToUserTable < ActiveRecord::Migration
  def change
    add_column :user, :single_access_token, :string

  end
end
