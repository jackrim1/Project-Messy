require 'rails_helper'

feature 'barracks' do
  context 'no barracks have been added' do
    scenario 'should display a prompt to add a barrack' do
      visit '/barracks'
      expect(page).to have_content 'No messes yet'
      expect(page).to have_link 'Add a mess'
    end
  end

  context 'barracks have been added' do
    before do
      Barrack.create(name: 'RA Mess')
    end

    scenario 'display barracks' do
      visit '/barracks'
      expect(page).to have_content('RA Mess')
      expect(page).not_to have_content('No messes yet')
    end
  end

  context 'creating barracks' do
    scenario 'prompts user to fill out a form, then displays the new barrack' do
      visit '/barracks'
      click_link 'Add a mess'
      fill_in 'Name', with: 'RA Mess'
      click_button 'Create mess'
      expect(page).to have_content 'RA Mess'
      expect(current_path).to eq '/barracks'
    end
  end

  context 'viewing barracks' do

    let!(:ra_mess){ Barrack.create(name:'RA Mess') }

    scenario 'lets a user view a barrack' do
     visit '/barracks'
     click_link 'RA Mess'
     expect(page).to have_content 'RA Mess'
     expect(current_path).to eq "/barracks/#{ra_mess.id}"
   end

 end
end
