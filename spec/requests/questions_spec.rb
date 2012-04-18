require 'spec_helper'

describe "Questions" do
  describe "GET /questions" do
    it "should redirect to login if unauthenticated" do
      visit questions_path
      page.should have_content("You need to sign in or sign up before continuing.")
    end
    
    context "when logged in" do
      before {login_as(FactoryGirl.build(:user), :scope => :user)}

      it "should not redirect to login if unauthenticated" do
        visit questions_path
        page.should_not have_content("You need to sign in or sign up before continuing.")
      end
    end
  end
end
