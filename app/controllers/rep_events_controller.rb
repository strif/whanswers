class RepEventsController < ApplicationController
  
  
  

  def new
    @rep_event = RepEvent.new(params[:rep_event])
    @user = User.find(session[:user_id])
    @rep_event.event_id = params[:event_id]
    @rep_event.event_type = params[:event_type]
    @rep_event.author_id = params[:author_id]
    @rep_event.user = @user
    if check_if_eligible
     @rep_event.author_id = '27'
    end
    respond_to do |format|
      if @rep_event.save
        # format.html { redirect_to(@rep_event, :notice => 'Rep event was successfully created.') }
        format.html { redirect_to(:controller =>'questions', :action => 'show', :id => params[:question_id]) }
        format.xml  { render :xml => @rep_event, :status => :created, :location => @rep_event }
      else
        format.html { redirect_to(:controller =>'questions', :action => 'show', :id => params[:question_id]) }
        format.xml  { render :xml => @rep_event.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  
  def check_if_eligible
   @check = RepEvent.where("event_id = ? and user_id = ?", params[:event_id],@rep_event.user).blank?
    if @check.blank?
     return true
   else
     return false
   end
  end


end
