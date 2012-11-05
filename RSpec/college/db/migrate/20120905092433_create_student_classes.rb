class CreateStudentClasses < ActiveRecord::Migration
  def change
    create_table :student_classes do |t|
      t.references :student
      t.references :course

      t.timestamps
    end
    add_index :student_classes, :student_id
    add_index :student_classes, :course_id
  end
end
