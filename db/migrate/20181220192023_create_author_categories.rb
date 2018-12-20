class CreateAuthorCategories < ActiveRecord::Migration
  def change
    create_table :author_categories do |t|
      t.integer :category_id
      t.integet :auth_id
  end
end
