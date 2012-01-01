class OptionsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /options
  def index
    respond_to do |format|
      format.html { render :layout => "admin" }# index.html.haml
      format.json { render json: Option.system }
    end
  end
  
  def update_all
    Option.set "true_false_questions_count", params[:options][:true_false_questions_count].to_i
    Option.set "multi_choice_questions_count", params[:options][:multi_choice_questions_count].to_i
    Option.set "test_title", params[:options][:test_title]
    flash.now[:notice] = "System Settings Updated"
    respond_to do |format|
      format.js {} # update_all.js.erb
      format.json {render json: Option.system}
      format.html {render :action => :index}
    end
  end
end
