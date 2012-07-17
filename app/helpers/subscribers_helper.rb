module SubscribersHelper
  require 'csv'
  
  # TODO: Factor out a generic generate_csv method and move it to ApplicationHelper
  def generate_csv(subscribers)
    CSV.generate do |csv| 
      subscribers.each_with_index do |subscriber, index|
        # csv << [index+1, subscriber.firstname, subscriber.lastname, subscriber.email]
        csv << [subscriber.firstname, subscriber.lastname, subscriber.email]
      end
    end
  end

end
