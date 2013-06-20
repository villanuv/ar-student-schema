require_relative '../../db/config'

# implement your Student model here
class Student < ActiveRecord::Base
  validates :email, :uniqueness => true, :format => { :with => /\w*[@]\w*..{3,}/, :message => "Invalid email format" }
  validates :phone, :format => { :with => /\(?\d{3}\)?.?\d{3}.?\d{4}\s*[x]?\d{4}?/, :message => "Not a phone number" }
  validates :age, :numericality => { :greater_than_or_equal_to => 5, :message => "Not old enough" }

  has_many :students_teachers
  has_many :teachers, :through => :students_teachers

  def name
    [first_name, last_name].join(' ')
  end

  def age
    now = Time.now
    now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end

  def assign_teacher
    teacher_id = Teacher.all.sample
  end
end

