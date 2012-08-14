# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating events ..."
events = Event.create([
  { :startdate => "2012-01-28 12:00:00", :enddate => "2012-01-29 12:00:00",:title => "Sachsen GP & LE Moosi Cup", :location => "Racing Center Leipzig" },
  { :startdate => "2012-02-04 12:00:00", :enddate => "2012-02-05 12:00:00",:title => "HPI-LRP Challenge", :location => "Racing Center Leipzig" },
  { :startdate => "2012-02-11 12:00:00", :enddate => "2012-02-12 12:00:00",:title => "Tamiya Euro Cup", :location => "Racing Center Leipzig" },
  { :startdate => "2012-03-31 12:00:00", :enddate => "2012-04-01 12:00:00",:title => "Tamiya Euro Cup", :location => "Racing Center Leipzig" },
  { :startdate => "2012-04-14 12:00:00", :enddate => "2012-04-15 12:00:00",:title => "LRP Offroad Challenge", :location => "Racing Center Leipzig" },
  { :startdate => "2012-05-19 12:00:00", :enddate => "2012-05-20 12:00:00",:title => "Sachsen GP & LE Moosi Cup", :location => "Racing Center Leipzig" },
  { :startdate => "2012-06-23 12:00:00", :enddate => "2012-06-24 12:00:00",:title => "Sachsen GP & LE Moosi Cup", :location => "Racing Center Leipzig" },
  { :startdate => "2012-09-01 12:00:00", :enddate => "2012-09-02 12:00:00",:title => "Sachsen GP & LE Moosi Cup", :location => "Racing Center Leipzig" },
  { :startdate => "2012-10-05 12:00:00", :enddate => "2012-10-07 12:00:00",:title => "Hobby Modell Spiel", :location => "Racing Center Leipzig" },
  { :startdate => "2012-11-17 12:00:00", :enddate => "2012-11-18 12:00:00",:title => "LRP Offroad Challenge", :location => "Racing Center Leipzig" },
  { :startdate => "2012-12-01 12:00:00", :enddate => "2012-12-02 12:00:00",:title => "Tamiya Euro Cup", :location => "Racing Center Leipzig" }
])


puts "Creating users ..."
users = User.create([
  { :username => "zzeroo", :email  => "test@test.com", :password => "rc-leipzig", :password_confirmation => "rc-leipzig" },
  { :username => "Tom", :email => "tomgehler@gmx.de", :password => "rc-leipzig", :password_confirmation => "rc-leipzig" },
  { :username => "Katrin", :email => "info@bremme-wohnen.de", :password => "rc-leipzig", :password_confirmation => "rc-leipzig" },
  { :username => "Thomas", :email => "thomesd@web.de", :password => "rc-leipzig", :password_confirmation => "rc-leipzig" },
  { :username => "presse@rc-leipzig.com", :email  => "presse@rc-leipzig.com", :password => "rc-leipzig", :password_confirmation => "rc-leipzig" },
  { :username => "info@rc-leipzig.com", :email  => "info@rc-leipzig.com", :password => "rc-leipzig", :password_confirmation => "rc-leipzig" },
  { :username => "Oliver", :email => "oliver.markgraf@googlemail.com", :password => "rc-leipzig", :password_confirmation => "rc-leipzig" },
])


User.find_by_username("zzeroo").update_attribute(:admin, true)
