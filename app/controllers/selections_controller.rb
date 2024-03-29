class SelectionsController < ApplicationController
  # GET /selections
  # GET /selections.xml
  def index
    @selections = Selection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @selections }
    end
  end

  # GET /selections/1
  # GET /selections/1.xml
  def show
    @selection = Selection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @selection }
    end
  end

  # GET /selections/new
  # GET /selections/new.xml
  def new
    @selection = Selection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @selection }
    end
  end

  # GET /selections/1/edit
  def edit
    @selection = Selection.find(params[:id])
  end

  # POST /selections
  # POST /selections.xml
  def create
    @selection = Selection.new(params[:selection])

    respond_to do |format|
      if @selection.save
        format.html { redirect_to(@selection, :notice => 'Selection was successfully created.') }
        format.xml  { render :xml => @selection, :status => :created, :location => @selection }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @selection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /selections/1
  # PUT /selections/1.xml
  def update
    @selection = Selection.find(params[:id])

    respond_to do |format|
      if @selection.update_attributes(params[:selection])
        format.html { redirect_to(@selection, :notice => 'Selection was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @selection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /selections/1
  # DELETE /selections/1.xml
  def destroy
    @selection = Selection.find(params[:id])
    @selection.destroy

    respond_to do |format|
      format.html { redirect_to(selections_url) }
      format.xml  { head :ok }
    end
  end
end
