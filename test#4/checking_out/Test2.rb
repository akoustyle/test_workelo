class ProductsTest
  test "visiting the homepage" do
  # exercice
  visit root_url
  # verify
  assert_selector "h1", text: "Ruby"
  end
end
