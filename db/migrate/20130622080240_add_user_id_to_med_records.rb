class AddUserIdToMedRecords < ActiveRecord::Migration
  def change
    add_column :med_records, :user_id, :integer
    add_index :med_records, :user_id
  end
end
