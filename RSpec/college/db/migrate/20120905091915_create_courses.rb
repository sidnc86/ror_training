class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :abbriviation
      t.string :fullname

      t.timestamps
    end
  end
end
