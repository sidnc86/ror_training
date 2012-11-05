class StudentClass < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  # attr_accessible :title, :body
end
