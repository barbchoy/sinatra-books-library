class CreateAuthorCategorys < ActiveRecord::Migration
  def change
    create_table :author_categorys do |t|
      t.integer :category_id
      t.integer :author_id
    end
  end
end
