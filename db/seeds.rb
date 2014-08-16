# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  ['admin@coreprojectdemo.com', 'mohan@coreprojectdemo.com'].each do |admin|
    user = User.where(:email => admin).first     
    if user.blank?
      user = User.new(:email => admin, :password => 'ginger2014', :password_confirmation => 'ginger2014', :role => 'admin') 
      user.save!
    end
  end
