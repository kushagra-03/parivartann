class CreateDonations < ActiveRecord::Migration
  def self.up
    create_table :donations do |t|
      t.references :donating_user
      t.string :item
      t.timestamps
    end
  end

  def self.down
    drop_table :donations
  end
end
