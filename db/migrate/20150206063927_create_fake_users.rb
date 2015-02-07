class CreateFakeUsers < ActiveRecord::Migration
  def change
    create_table :fake_users do |t|
      t.text :name
      t.text :email
      t.text :ssn
      t.text :cc
      t.text :password

      t.timestamps
    end
  end
end
