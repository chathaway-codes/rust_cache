class CreateCaches < ActiveRecord::Migration
  def change
    create_table :caches do |t|
      t.references :server, index: true
      t.string :name
      t.float :x
      t.float :y
      t.float :z
      t.boolean :secured
      t.text :notes

      t.timestamps
    end
  end
end
