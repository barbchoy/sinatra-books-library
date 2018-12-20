class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :email
    end
  end
end
