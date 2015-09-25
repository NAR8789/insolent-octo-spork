# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.where(email: 'xiao.fan@workday.com').first_or_create

map = Map.where(user: user).first_or_create(center_radius: 0)

Comic.all.each do |comic|
  thumbnail = comic.thumbnails.first
  map.bubbles.where(
      thumbnail:thumbnail,
  ).first_or_create(
      radius: 50,
      position_r: 0,
      position_theta: 0,
      description: 'lorem ipsum dolor sit amet'
  ) unless thumbnail.nil?
end
