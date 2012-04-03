class HoboMigration6 < ActiveRecord::Migration
  def self.up
    add_column :bankers, :bank_id, :integer
    remove_column :bankers, :bankname

    remove_index :bankers, :name => :index_bankers_on_bankname rescue ActiveRecord::StatementInvalid
    add_index :bankers, [:bank_id]
  end

  def self.down
    remove_column :bankers, :bank_id
    add_column :bankers, :bankname, :integer

    remove_index :bankers, :name => :index_bankers_on_bank_id rescue ActiveRecord::StatementInvalid
    add_index :bankers, [:bankname]
  end
end
