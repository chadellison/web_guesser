class UpdateStudents < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.remove :address_id
    end
  end
end
