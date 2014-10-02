module AuthenticationHelpers
    def sign_in_as_user	
	    visit "/users/sign_in"
	    fill_in "Email",    :with => "danny.bogart@gmail.com"
	    fill_in "Password", :with => "asdfasdf"
	    click_button "Sign in"
    end
end

RSpec.configure do |c|
    c.include AuthenticationHelpers, :type => :request
end