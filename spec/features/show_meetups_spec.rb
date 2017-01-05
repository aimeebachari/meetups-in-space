require 'spec_helper'

feature "page of meetups" do
  let! (:meetup) { Meetup.create(name:'storytime', time: '7:00', location: 'Library', duration: '30 min', date: '12/12/2016', description: 'come listen to a story') }

  scenario 'page shows meetups' do
    visit '/meetups'

    expect(page).to have_content "storytime"
  end
end
