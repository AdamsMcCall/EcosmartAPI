class MainTables < ActiveRecord::Migration[5.2]
  def change
      create_table :childs
      add_column :childs, :account_id, :integer
      add_column :childs, :last_name, :string
      add_column :childs, :first_name, :string
      add_column :childs, :email, :string
      add_column :childs, :pwd_hash, :string
      add_column :childs, :birthdate, :datetime
      add_column :childs, :balance, :float
      
      create_table :parents
      add_column :parents, :account_id, :integer
      add_column :parents, :last_name, :string
      add_column :parents, :first_name, :string
      add_column :parents, :email, :string
      add_column :parents, :pwd_hash, :string
      add_column :parents, :birthdate, :datetime
      
      create_table :transactions
      add_column :transactions, :amount, :float
      add_column :transactions, :child_id, :integer
      add_column :transactions, :date, :datetime
      add_column :transactions, :receiver, :string
      
      create_table :transfers
      add_column :transfers, :amount, :float
      add_column :transfers, :parent_id, :integer
      add_column :transfers, :child_id, :integer
      add_column :transfers, :date, :datetime
      
      create_table :links
      add_column :links, :parent_id, :integer
      add_column :links, :child_id, :integer
  end
end
