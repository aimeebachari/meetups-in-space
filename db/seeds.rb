# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
Meetup.create(name:'storytime', time: '7:00', location: 'Library', duration: '30 min', date: '12/12/2016', description: 'come listen to a story')
User.create(provider: 'comcast', uid: '1', username: 'johnson', email: 'johnson@johnson.com', avatar_url: '/johnson.png')
