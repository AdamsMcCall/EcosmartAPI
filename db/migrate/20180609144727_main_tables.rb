class MainTables < ActiveRecord::Migration[5.2]
  def change
    create_table :children
    add_column :children, :account_id, :integer
    add_column :children, :last_name, :string
    add_column :children, :first_name, :string
    add_column :children, :email, :string
    add_column :children, :pwd_hash, :string
    add_column :children, :birthdate, :datetime
    add_column :children, :balance, :float
      
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
