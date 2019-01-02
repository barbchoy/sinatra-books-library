class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      t.text :summary
      t.integer :author_id
      t.integer :category_id
    end
  end
end
