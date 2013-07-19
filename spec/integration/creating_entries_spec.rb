require 'spec_helper'


feature 'Creating Entries' do
  scenario "can create an entry" do
    visit '/'
    click_link 'New Entry'
    #fill_in 'Event', :with => 'TextMate 2'
    select '2013', :from => 'entry[event(1i)]'
    select 'July', :from => 'entry[event(2i)]'
    select '20', :from => 'entry[event(3i)]'
    fill_in 'Description', :with => "Something very very important"
    click_button 'Create Entry'
    page.should have_content('Entry has been created.')
  end

