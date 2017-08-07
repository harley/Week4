class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :description
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
