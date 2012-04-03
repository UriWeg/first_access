class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :bankers, :bankname, :integer
    remove_column :bankers, :bank_id

    remove_index :bankers, :name => :index_bankers_on_bank_id rescue ActiveRecord::StatementInvalid
    add_index :bankers, [:bankname]
  end

  def self.down
    remove_column :bankers, :bankname
    add_column :bankers, :bank_id, :integer

    remove_index :bankers, :name => :index_bankers_on_bankname rescue ActiveRecord::StatementInvalid
    add_index :bankers, [:bank_id]
  end
end
