class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :date_published
      t.text :summary
      t.text :content
      t.integer :author_id
      t.integer :category_id
    end
  end
end
