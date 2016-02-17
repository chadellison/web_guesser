class UpdateAddresses < ActiveRecord::Migration
  def change
    change_table :addresses do |t|
      t.integer :student_id
    end
  end
end
