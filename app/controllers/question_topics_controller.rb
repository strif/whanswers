class QuestionTopicsController < ApplicationController
  # GET /question_topics
  # GET /question_topics.xml
  def index
    @question_topics = QuestionTopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_topics }
    end
  end

  # GET /question_topics/1
  # GET /question_topics/1.xml
  def show
    @question_topic = QuestionTopic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_topic }
    end
  end

  # GET /question_topics/new
  # GET /question_topics/new.xml
  def new
    @question_topic = QuestionTopic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_topic }
    end
  end

  # GET /question_topics/1/edit
  def edit
    @question_topic = QuestionTopic.find(params[:id])
  end

  # POST /question_topics
  # POST /question_topics.xml
  def create
    @question_topic = QuestionTopic.new(params[:question_topic])

    respond_to do |format|
      if @question_topic.save
        format.html { redirect_to(@question_topic, :notice => 'Question topic was successfully created.') }
        format.xml  { render :xml => @question_topic, :status => :created, :location => @question_topic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_topic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_topics/1
  # PUT /question_topics/1.xml
  def update
    @question_topic = QuestionTopic.find(params[:id])

    respond_to do |format|
      if @question_topic.update_attributes(params[:question_topic])
        format.html { redirect_to(@question_topic, :notice => 'Question topic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_topic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_topics/1
  # DELETE /question_topics/1.xml
  def destroy
    @question_topic = QuestionTopic.find(params[:id])
    @question_topic.destroy

    respond_to do |format|
      format.html { redirect_to(question_topics_url) }
      format.xml  { head :ok }
    end
  end
end
