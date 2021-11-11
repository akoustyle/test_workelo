feature "checking out when using wikipedia site" do
  scenario 'can visit the Ruby wikipedia page' do
    visit root_url
    assert_selector "h1", text: "Ruby"
    assert_selector ".external", href: "https://www.ruby-lang.org/"
  end
end
feature "checking out when using wikipedia site" do
  scenario 'can visit wikipedia sign in page' do
    visit root_url
    click_button ".p-personal-checkbox"
    click_button "user-links-collapsible-item vector-menu-content-item mw-ui-icon mw-ui-icon-before mw-ui-icon-wikimedia-userAvatar", text: "Créer un compte"
    fill_in "#wpName2", with: "AkouStyle2"
    fill_in "#wpPassword2", with: "Akoutsyle1932@"
    fill_in "#wpRetype", with: "Akoustyle1932@"
    fill_in "#wpEmail", with: "akoustyle@gmail.com"
    fill_in "#mw-input-captchaWord", with: "Captcha"
    click_button "#wpCreateaccount"
    expect(page).to have_content("#pt-logout")
  end
end
feature "checking out when using the discussion" do
  scenario "can open a discussion on Ruby" do
    click_link 'Discussion'
    @current_page.text.should include "Disccussion:Ruby"
    assert_selector "h2", text: "Qualification 'orienté' contre 'objet'"
    assert_selector "#text", text: "12 octobre 2006 à 13:56 (CEST)"
    assert_selector "p", text: "Répondre à Piglop"
    click_link 'répondre'
    fill_in ".ve-ui-targetWidget .ve-ui-surface .ve-ce-attachedRootNode", text: "some stuff"
    click_button "oo-ui-buttonElement.oo-ui-widget-disabled > .oo-ui-buttonElement-button", title: "Répondre"
    expect(page).to have_text("some stuff")
  end
end
