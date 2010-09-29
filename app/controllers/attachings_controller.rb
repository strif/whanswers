class AttachingsController < ApplicationController
  # GET /attachings
  # GET /attachings.xml
  def index
    @attachings = Attaching.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attachings }
    end
  end

  # GET /attachings/1
  # GET /attachings/1.xml
  def show
    @attaching = Attaching.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attaching }
    end
  end

  # GET /attachings/new
  # GET /attachings/new.xml
  def new
    @attaching = Attaching.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attaching }
    end
  end

  # GET /attachings/1/edit
  def edit
    @attaching = Attaching.find(params[:id])
  end

  # POST /attachings
  # POST /attachings.xml
  def create
    @attaching = Attaching.new(params[:attaching])

    respond_to do |format|
      if @attaching.save
        format.html { redirect_to(@attaching, :notice => 'Attaching was successfully created.') }
        format.xml  { render :xml => @attaching, :status => :created, :location => @attaching }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attaching.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attachings/1
  # PUT /attachings/1.xml
  def update
    @attaching = Attaching.find(params[:id])

    respond_to do |format|
      if @attaching.update_attributes(params[:attaching])
        format.html { redirect_to(@attaching, :notice => 'Attaching was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attaching.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attachings/1
  # DELETE /attachings/1.xml
  def destroy
    @attaching = Attaching.find(params[:id])
    @attaching.destroy

    respond_to do |format|
      format.html { redirect_to(attachings_url) }
      format.xml  { head :ok }
    end
  end
end
