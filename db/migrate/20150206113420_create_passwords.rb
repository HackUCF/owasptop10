class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.text :website
      t.text :pw

      t.timestamps
    end
  end
end
