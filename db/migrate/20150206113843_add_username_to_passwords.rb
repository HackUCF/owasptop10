class AddUsernameToPasswords < ActiveRecord::Migration
  def change
    add_column :passwords, :username, :text
  end
end
