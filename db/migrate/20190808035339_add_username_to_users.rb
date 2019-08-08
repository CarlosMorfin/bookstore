class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :user, :username, :string
    add_index :user, :username, unique: true
  end
end
