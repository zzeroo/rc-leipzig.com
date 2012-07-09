class Subscriber < ActiveRecord::Base
  attr_accessible :association, :email, :event_id, :firstname, :grade_id, :name

  belongs_to :event
  belongs_to :grade
end
