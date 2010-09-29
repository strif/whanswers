class DatatypesController < ApplicationController
  # GET /datatypes
  # GET /datatypes.xml
  def index
    @datatypes = Datatype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @datatypes }
    end
  end

  # GET /datatypes/1
  # GET /datatypes/1.xml
  def show
    @datatype = Datatype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @datatype }
    end
  end

  # GET /datatypes/new
  # GET /datatypes/new.xml
  def new
    @datatype = Datatype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @datatype }
    end
  end

  # GET /datatypes/1/edit
  def edit
    @datatype = Datatype.find(params[:id])
  end

  # POST /datatypes
  # POST /datatypes.xml
  def create
    @datatype = Datatype.new(params[:datatype])

    respond_to do |format|
      if @datatype.save
        format.html { redirect_to(@datatype, :notice => 'Datatype was successfully created.') }
        format.xml  { render :xml => @datatype, :status => :created, :location => @datatype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @datatype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /datatypes/1
  # PUT /datatypes/1.xml
  def update
    @datatype = Datatype.find(params[:id])

    respond_to do |format|
      if @datatype.update_attributes(params[:datatype])
        format.html { redirect_to(@datatype, :notice => 'Datatype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @datatype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /datatypes/1
  # DELETE /datatypes/1.xml
  def destroy
    @datatype = Datatype.find(params[:id])
    @datatype.destroy

    respond_to do |format|
      format.html { redirect_to(datatypes_url) }
      format.xml  { head :ok }
    end
  end
end
