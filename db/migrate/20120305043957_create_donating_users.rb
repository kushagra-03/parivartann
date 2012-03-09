class CreateDonatingUsers < ActiveRecord::Migration
  def self.up
    create_table :donating_users do |t|
      t.string :name
      t.string :city
      t.string :email
      t.integer :phone_no

      t.timestamps
    end
  end

  def self.down
    drop_table :donating_users
  end
end
