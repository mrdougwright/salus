class AddVarsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string, :limit => 1
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :ethnicity, :string
  end
end
