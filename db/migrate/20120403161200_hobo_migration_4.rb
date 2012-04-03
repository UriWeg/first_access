class HoboMigration4 < ActiveRecord::Migration
  def self.up
    remove_column :bankers, :bank
  end

  def self.down
    add_column :bankers, :bank, :string
  end
end
