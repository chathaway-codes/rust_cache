class CreateUserCaches < ActiveRecord::Migration
  def change
    create_table :user_caches do |t|
      t.references :user, index: true
      t.references :cach, index: true

      t.timestamps
    end
  end
end
