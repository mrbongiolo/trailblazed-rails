class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true, foreign_key: true
      t.string :author, null: false
      t.text :message, null: false

      t.timestamps null: false
    end
  end
end
