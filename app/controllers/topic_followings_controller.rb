class TopicFollowingsController < ApplicationController
  # GET /topic_followings
  # GET /topic_followings.xml
  def index
    @topic_followings = TopicFollowing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @topic_followings }
    end
  end

  # GET /topic_followings/1
  # GET /topic_followings/1.xml
  def show
    @topic_following = TopicFollowing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @topic_following }
    end
  end

  # GET /topic_followings/new
  # GET /topic_followings/new.xml
  def new
    @topic_following = TopicFollowing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @topic_following }
    end
  end

  # GET /topic_followings/1/edit
  def edit
    @topic_following = TopicFollowing.find(params[:id])
  end

  # POST /topic_followings
  # POST /topic_followings.xml
  def create
    @topic_following = TopicFollowing.new(params[:topic_following])

    respond_to do |format|
      if @topic_following.save
        format.html { redirect_to(@topic_following, :notice => 'Topic following was successfully created.') }
        format.xml  { render :xml => @topic_following, :status => :created, :location => @topic_following }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @topic_following.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /topic_followings/1
  # PUT /topic_followings/1.xml
  def update
    @topic_following = TopicFollowing.find(params[:id])

    respond_to do |format|
      if @topic_following.update_attributes(params[:topic_following])
        format.html { redirect_to(@topic_following, :notice => 'Topic following was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @topic_following.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /topic_followings/1
  # DELETE /topic_followings/1.xml
  def destroy
    @topic_following = TopicFollowing.find(params[:id])
    @topic_following.destroy

    respond_to do |format|
      format.html { redirect_to(topic_followings_url) }
      format.xml  { head :ok }
    end
  end
end
