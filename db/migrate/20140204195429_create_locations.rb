class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :x
      t.float :y
      t.float :z

      t.timestamps
    end
  end
end
