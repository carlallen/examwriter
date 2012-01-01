class QuestionsController < ApplicationController
  before_filter :authenticate_user!, :except => [:test, :new, :create]
  # GET /questions
  # GET /questions.xml
  def index
    @questions = Question.paginate(:page => params[:page], :per_page => 20).order('created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.xml
  def show
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.xml
  def new
    @question = Question.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question }
    end
  end

  # GET /questions/1/edit
  def edit
    flash[:notice] = "Can not update questions"
    redirect_to question_index_path
  end

  # POST /questions
  # POST /questions.xml
  def create
    @question = Question.new(params[:question])
    @question.type = params[:question][:type]
    if @question.valid?
      @question = params[:question][:type].constantize.new(params[:question])
    end
    
    respond_to do |format|
      if @question.save
        format.html { redirect_to((user_signed_in? ? question_url(@question) : {:action => :new}), :notice => 'Question was successfully submitted.') }
        format.xml  { render :xml => @question, :status => :created, :location => @question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.xml
  def update
    edit
  end

  # DELETE /questions/1
  # DELETE /questions/1.xml
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to(questions_url) }
      format.xml  { head :ok }
    end
  end
  
  def verify
    @question = Question.find params[:id]
    @question.verify!
    respond_to do |format|
      format.html { redirect_to(question_url(@question), :notice => 'Question was successfully verified.') }
      format.xml  { render :xml => @question, :status => :created, :location => @question }
    end


  end
  
  def test
    true_false_count = Option.get "true_false_questions_count"
    multi_choice_count = Option.get "multi_choice_questions_count"
    begin
      @true_false = TrueFalseQuestion.verified.limit(true_false_count).order("RANDOM()")
      @multi_choice = MultipleChoiceQuestion.verified.limit(multi_choice_count).order("RANDOM()")
    rescue
      @true_false = TrueFalseQuestion.verified.limit(true_false_count).order("RAND()")
      @multi_choice = MultipleChoiceQuestion.verified.limit(multi_choice_count).order("RAND()")      
    end
    @question_number = 0
  end
end
