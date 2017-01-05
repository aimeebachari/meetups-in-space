require 'spec_helper'

feature "page of meetup details" do
  let! (:meetup) { Meetup.create(name:'storytime', time: '7:00', location: 'Library', duration: '30 min', date: '12/12/2016', description: 'come listen to a story') }

  scenario 'page shows location' do
    visit '/meetups/' + meetup.id.to_s

    expect(page).to have_content "Library"
    expect(page).to have_content "7:00"
    expect(page).to have_content "30 min"
    expect(page).to have_content "12/12/2016"
    expect(page).to have_content "come listen to a story"
  end
end
