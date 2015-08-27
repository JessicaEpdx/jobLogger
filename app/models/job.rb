class Job < ActiveRecord::Base
  validates_presence_of :company
  validates_presence_of :interviewer

end
