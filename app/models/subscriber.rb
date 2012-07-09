class Subscriber < ActiveRecord::Base
  attr_accessible :association, :email, :events_id, :firstname, :grades_id, :name

  belongs_to :event
  belongs_to :grade
end
