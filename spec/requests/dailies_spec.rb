require 'rails_helper'

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = create(:user)

    visit "/users/sign_in"

    fill_in "Email",    :with => "danny.bogart@gmail.com"
    fill_in "Password", :with => "asdfasdf"

    click_button "Sign in"

    expect(page).to have_content("Signed in successfully.")
  end
end

describe "show daily list" do
  it "display daily list items" do
  	create(:daily)
  	sign_in_as_user
    expect(page).to have_content("Eat ice cream")
    #save_and_open_page  	
  end
end