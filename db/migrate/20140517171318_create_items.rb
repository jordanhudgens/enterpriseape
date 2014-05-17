class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.string :category
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
