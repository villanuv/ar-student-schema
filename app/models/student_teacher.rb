require_relative '../../db/config'

# implement your Student model here
class StudentTeacher < ActiveRecord::Base
  
  belongs_to :student
  belongs_to :teacher

end
