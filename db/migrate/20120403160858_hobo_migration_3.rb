class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :bankers, :bank_id, :integer

    add_index :bankers, [:bank_id]
  end

  def self.down
    remove_column :bankers, :bank_id

    remove_index :bankers, :name => :index_bankers_on_bank_id rescue ActiveRecord::StatementInvalid
  end
end
