class UpdateStudentColumn < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.boolean :is_alumnus, default: false
    end
  end
end
