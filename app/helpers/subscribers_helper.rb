module SubscribersHelper
  require 'csv'

  def generate_csv(subscribers)
    CSV.generate do |csv| 
      subscribers.each_with_index do |subscriber, index|
        csv << [index+1, subscriber.firstname, subscriber.lastname, subscriber.email]
      end
    end
  end

end
