class ChangeChilds < ActiveRecord::Migration[5.2]
  def change
      drop_table :childs
      create_table :children
      add_column :children, :account_id, :integer
      add_column :children, :last_name, :string
      add_column :children, :first_name, :string
      add_column :children, :email, :string
      add_column :children, :pwd_hash, :string
      add_column :children, :birthdate, :datetime
      add_column :children, :balance, :float
  end
end
