class HoboMigration7 < ActiveRecord::Migration
  def self.up
    create_table :applicants do |t|
      t.string   :phonenumber
      t.string   :name
      t.float    :score
      t.boolean  :confirmed
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :applicants
  end
end
