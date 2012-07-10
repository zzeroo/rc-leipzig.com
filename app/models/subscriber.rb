class Subscriber < ActiveRecord::Base
  attr_accessible :association, :email, :event_id, :firstname, :grade, :lastname

  belongs_to :event

  validates :email, :confirmation => true
  validates :email_confirmation, :presence => true

  validates :firstname, :presence => true
  validates :lastname, :presence => true

  validates :grade, :inclusion => { :in => ["Rookie Challenge", "Shortcourse Challenge", "2WD Challenge", "4WD Challenge"], :message => "%{value} ist keine erlaubte Klasse" }

end
