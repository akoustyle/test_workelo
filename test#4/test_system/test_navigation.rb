require_relative 'rspec_helper'

RSpec.describe 'Wiki ruby', :type => :system do
  context 'checking out when using wikipedia site' do
    it 'can visit the Ruby wikipedia page' do
      visit 'https://fr.wikipedia.org/wiki/Ruby'
      assert_selector 'h1', text: 'Ruby'
    end
  end
  context 'checking out when using wikipedia user flow' do
    it 'can visit wikipedia sign in page' do
      visit 'https://fr.wikipedia.org/w/index.php?title=Sp%C3%A9cial:Cr%C3%A9er_un_compte&returnto=Ruby'
      assert_selector 'h1', text: 'Créer un compte'
    end
  end
  context 'clicks Discussion tab successfully' do
    it 'can open a discussion on Ruby' do
      visit 'https://fr.wikipedia.org/wiki/Ruby'
      click_link 'Discussion'
      expect(current_url).to eql('https://fr.wikipedia.org/wiki/Discussion:Ruby')
    end
  end
end
