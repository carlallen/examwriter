require 'spec_helper'

describe "Questions" do
  describe "GET /questions/new" do
    it "should show multi choice options when selected", :js => true do 
      visit "/questions/new"
      find("#question_type_multiplechoicequestion").click()
      find("#multi_choice_options").should be_visible
      find("#true_false_options").should_not be_visible
      click_button("Create Question") #submit form with invalid data
      find("#multi_choice_options").should be_visible
      find("#true_false_options").should_not be_visible
    end
    it "should show true false options when selected", :js => true do 
      visit "/questions/new"
      find("#question_type_truefalsequestion").click()
      find("#multi_choice_options").should_not be_visible
      find("#true_false_options").should be_visible
      click_button("Create Question") #submit form with invalid data
      find("#multi_choice_options").should_not be_visible
      find("#true_false_options").should be_visible
    end
  end
  
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
