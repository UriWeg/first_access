class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :bankers do |t|
      t.string   :phonenumber
      t.string   :name
      t.string   :bank
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :bankers
  end
end
