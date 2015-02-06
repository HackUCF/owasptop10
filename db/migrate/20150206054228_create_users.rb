class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :ssn
      t.text :cc
      t.text :password

      t.timestamps
    end
  end
end
