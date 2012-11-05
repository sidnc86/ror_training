class Student < ActiveRecord::Base
  attr_accessible :address, :name, :phone
  has_many :student_classes,:dependent => :destroy
  has_many :courses, :through => :student_classes
end
