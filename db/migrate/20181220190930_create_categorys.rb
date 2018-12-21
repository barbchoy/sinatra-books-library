class CreateCategorys < ActiveRecord::Migration
  def change
    create_table :categorys do |t|
      t.string :name
    end
  end
end
