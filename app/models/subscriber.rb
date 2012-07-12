class Subscriber < ActiveRecord::Base
  attr_accessible :email, :event_id, :firstname, :grade, :lastname

  belongs_to :event

  validates :firstname, :lastname, :email, :presence => true
end
