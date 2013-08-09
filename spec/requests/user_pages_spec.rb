require 'spec_helper'

describe "UserPages" do
	describe "profile page" do
	    let(:user) { FactoryGirl.create(:user) }
	    before { visit user_path(user) }

	    it { should have_content(user.name) }
	    it { should have_title(user.name) }

	end
	describe "Sign up page" do
		
		before { visit new_user_path }
		let(:submit) {'Create my account' }
		it { should have_title(full_title('Sign up')) }
		describe "With invalid information" do
			it "should not create a user" do
				expect {click_button submit}.not_to change(User, :count)
			end
		end
		describe "With valid information" do
			before do
			fill_in "Name", with: "Example User"
			  fill_in "Email", with: "user@example.com"
			  fill_in "Password", with: "foobar"
			  fill_in "Confirmation", with: "foobar"
			end
			it "should change user count" do
		expect { click_button submit }.to change(User, :count).by(1)
			end	
                  describe "after saving the user" do
			  before { click_button submit }
			  let(:user) { User.find_by(email: "user@example.com") }
			  it { should have_title(user.name) }
			  it { should have_selector('div.alert.alert-success', text: 'You are on our system!') }
		  end
						   
		end
	end
end
