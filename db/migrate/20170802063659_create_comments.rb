class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :photo, foreign_key: true
      t.string :username
      t.string :body

      t.timestamps
    end
  end
end
