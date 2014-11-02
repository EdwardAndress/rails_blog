require 'rails_helper'

describe 'posts' do

	context 'when the user has no posts' do
		
		it 'a prompt to add content is displayed' do
			visit '/posts'
			expect(page).to have_content("Stop a while and chew some fat why don't ya")
		end

	end

	context 'when a user wants to add a post' do

		it 'they can find a link for that purpose on their homepage' do
			visit '/posts'
			expect(page).to have_link 'I have been ruminating on this for a while now and...'
		end

		it 'when they click on that link they are shown a form for adding links' do 
			visit '/posts'
			click_link 'I have been ruminating on this for a while now and...'
			expect(page).to have_field "Cud of the Day"
		end

	end

end