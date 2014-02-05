class CreateBounties < ActiveRecord::Migration
  def change
    create_table :bounties do |t|
      t.references :server, index: true
      t.string :who
      t.string :why

      t.timestamps
    end
  end
end
