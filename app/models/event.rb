class Event < ActiveRecord::Base
  attr_accessible :description, :end_date, :start_date, :title
end
