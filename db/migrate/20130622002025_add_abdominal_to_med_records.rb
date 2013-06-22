class AddAbdominalToMedRecords < ActiveRecord::Migration
  def change
    add_column :med_records, :abdominal, :string
  end
end
