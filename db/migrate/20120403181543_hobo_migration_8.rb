class HoboMigration8 < ActiveRecord::Migration
  def self.up
    add_column :applicants, :banker_id, :integer

    add_index :applicants, [:banker_id]
  end

  def self.down
    remove_column :applicants, :banker_id

    remove_index :applicants, :name => :index_applicants_on_banker_id rescue ActiveRecord::StatementInvalid
  end
end
