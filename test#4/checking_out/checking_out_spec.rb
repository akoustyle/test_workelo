require_relative 'rspec_helper'

RSpec.describe "Wiki ruby", :type => :system do
  context "checking out when using wikipedia site" do
    it 'can visit the Ruby wikipedia page' do
      visit "https://fr.wikipedia.org/wiki/Ruby"
      assert_selector "h1", text: "Ruby"
    end
  end
  context "checking out when using wikipedia user flow" do
    it 'can visit wikipedia sign in page' do
      visit "https://fr.wikipedia.org/w/index.php?title=Sp%C3%A9cial:Cr%C3%A9er_un_compte&returnto=Ruby"
      assert_selector "h1", text: "Créer un compte"
      # click_button ".p-personal-checkbox"
      # click_button "user-links-collapsible-item vector-menu-content-item mw-ui-icon mw-ui-icon-before mw-ui-icon-wikimedia-userAvatar", text: "Créer un compte"
      # fill_in "#wpName2", with: "AkouStyle2"
      # fill_in "#wpPassword2", with: "Akoutsyle1932@"
      # fill_in "#wpRetype", with: "Akoustyle1932@"
      # fill_in "#wpEmail", with: "akoustyle@gmail.com"
      # fill_in "#mw-input-captchaWord", with: "Captcha"
      # click_button "#wpCreateaccount"
      # expect(page).to have_content("#pt-logout")
    end
  end
  context "clicks Discussion tab successfully'" do
    it "can open a discussion on Ruby" do
      visit "https://fr.wikipedia.org/wiki/Ruby"
      click_link 'Discussion'
      # @current_page.text.should include "Disccussion:Ruby"
      # assert_selector "span", text: "Qualification 'orienté objet' contre 'objet' "
      # assert_selector "#text", text: "12 octobre 2006 à 13:56 (CEST)"
      # assert_selector "p", text: "Répondre à Piglop"
      # click_link 'répondre'
      # fill_in ".ve-ui-targetWidget .ve-ui-surface .ve-ce-attachedRootNode", text: "some stuff"
      # click_button "oo-ui-buttonElement.oo-ui-widget-disabled > .oo-ui-buttonElement-button", title: "Répondre"
      expect(current_url).to eql("https://fr.wikipedia.org/wiki/Discussion:Ruby")
    end
  end
end
