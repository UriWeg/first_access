class HoboMigration9 < ActiveRecord::Migration
  def self.up
    add_column :banks, :name, :string
    remove_column :banks, :bankname
  end

  def self.down
    remove_column :banks, :name
    add_column :banks, :bankname, :string
  end
end
