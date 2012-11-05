class Course < ActiveRecord::Base
  attr_accessible :abbriviation, :fullname
  has_many :student_classes,:dependent => :destroy
  has_many :students, :through => :student_classes
end
