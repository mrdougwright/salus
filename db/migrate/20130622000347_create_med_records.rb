class CreateMedRecords < ActiveRecord::Migration
  def change
    create_table :med_records do |t|

      t.timestamps
    end
  end
end
