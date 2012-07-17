class Subscriber < ActiveRecord::Base
  attr_accessible :email, :event_id, :firstname, :grade, :lastname

  belongs_to :event

  validates :firstname, :lastname, :presence => true
  validates :email, :presence => true, :email => true

end
