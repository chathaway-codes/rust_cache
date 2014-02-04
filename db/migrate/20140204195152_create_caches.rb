class CreateCaches < ActiveRecord::Migration
  def change
    create_table :caches do |t|
      t.references :server, index: true
      t.references :location, index: true
      t.boolean :secured
      t.string :notes

      t.timestamps
    end
  end
end
