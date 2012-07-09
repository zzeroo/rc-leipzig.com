class Subscriber < ActiveRecord::Base
  attr_accessible :association, :email, :event_id, :firstname, :grade_id, :name
end
