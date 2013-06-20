require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudentsTeachers < ActiveRecord::Migration
  def change
    create_table :students_teachers do |table|
      table.references :teacher
      table.references :student
    end
  end
end
