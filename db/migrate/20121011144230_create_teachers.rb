require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |table|
      table.string :first_name
      table.string :last_name
      table.string :email
      table.string :phone
      table.references :student
    end
  end
end
