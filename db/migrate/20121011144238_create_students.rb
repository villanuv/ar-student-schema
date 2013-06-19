require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |table|
      table.string :first_name
      table.string :last_name
      table.string :gender
      table.date   :birthday
      table.string :email
      table.string :phone
    end
  end
end
