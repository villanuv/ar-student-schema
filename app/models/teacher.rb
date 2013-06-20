require_relative '../../db/config'

# implement your Student model here
class Teacher < ActiveRecord::Base
  validates :email, :uniqueness => true, :format => { :with => /\w*[@]\w*..{3,}/, :message => "Invalid email format" }
  validates :phone, :format => { :with => /\(?\d{3}\)?.?\d{3}.?\d{4}\s*[x]?\d{4}?/, :message => "Not a phone number" }

  has_many :students_teachers
  has_many :students, :through => :students_teachers

  def name
    [first_name, last_name].join(' ')
  end

end

