class QuestionFollowingsController < ApplicationController
  # GET /question_followings
  # GET /question_followings.xml
  def index
    @question_followings = QuestionFollowing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_followings }
    end
  end

  # GET /question_followings/1
  # GET /question_followings/1.xml
  def show
    @question_following = QuestionFollowing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_following }
    end
  end

  # GET /question_followings/new
  # GET /question_followings/new.xml
  def new
    @question_following = QuestionFollowing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_following }
    end
  end

  # GET /question_followings/1/edit
  def edit
    @question_following = QuestionFollowing.find(params[:id])
  end

  # POST /question_followings
  # POST /question_followings.xml
  def create
    @question_following = QuestionFollowing.new(params[:question_following])

    respond_to do |format|
      if @question_following.save
        format.html { redirect_to(@question_following, :notice => 'Question following was successfully created.') }
        format.xml  { render :xml => @question_following, :status => :created, :location => @question_following }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_following.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_followings/1
  # PUT /question_followings/1.xml
  def update
    @question_following = QuestionFollowing.find(params[:id])

    respond_to do |format|
      if @question_following.update_attributes(params[:question_following])
        format.html { redirect_to(@question_following, :notice => 'Question following was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_following.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_followings/1
  # DELETE /question_followings/1.xml
  def destroy
    @question_following = QuestionFollowing.find(params[:id])
    @question_following.destroy

    respond_to do |format|
      format.html { redirect_to(question_followings_url) }
      format.xml  { head :ok }
    end
  end
end
