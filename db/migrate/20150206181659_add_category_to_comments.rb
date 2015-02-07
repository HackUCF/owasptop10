class AddCategoryToComments < ActiveRecord::Migration
  def change
    add_column :comments, :cat, :text
  end
end
