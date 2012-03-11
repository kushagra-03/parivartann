class CreateDonations < ActiveRecord::Migration
  def self.up
    create_table :donations do |t|
      t.string :name
      t.string :city
      t.integer :contact_no
      t.string :email
      t.string :books
      t.string :clothes
      t.string :celebrate
      t.string :others

      t.timestamps
    end
  end

  def self.down
    drop_table :donations
  end
end
