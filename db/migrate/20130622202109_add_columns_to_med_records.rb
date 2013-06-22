class AddColumnsToMedRecords < ActiveRecord::Migration
  def change
    add_column :med_records, :skin, :string
    add_column :med_records, :face, :string
    add_column :med_records, :heart, :string
    add_column :med_records, :sexual_organs, :string
    add_column :med_records, :joints, :string
    add_column :med_records, :lungs, :string
    add_column :med_records, :eyes, :string
    add_column :med_records, :nervous_system, :string

  end
end
