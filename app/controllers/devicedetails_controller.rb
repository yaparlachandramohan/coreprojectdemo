class DevicedetailsController < ApplicationController

  before_filter :authenticate_user!
  
  def index
    @devicedetails = Devicedetail.all(:order => "created_at DESC")
  end
  
  def new
    @devicedetail = Devicedetail.new
  end
  
  def create
    @devicedetail = Devicedetail.new(params[:devicedetail])
    if @devicedetail.save
      @devicedetail.update_attributes(:nearimage_url => @devicedetail.nearimage.url, :intermediateimage_url => @devicedetail.intermediateimage.url, :farimage_url => @devicedetail.farimage.url) 
      flash[:notice] = "Device Details successfully saved..!"
      #@devicedetails = Devicedetail.all(:order => "created_at DESC")
      redirect_to devicedetails_path
    else
      render :action => "new"
    end 
  end
  
  def show
    @devicedetail = Devicedetail.find(params[:id])
  end
  
  def edit
    @devicedetail = Devicedetail.find(params[:id]) 
  end
  
  def update
    @devicedetail = Devicedetail.find(params[:id])
    if @devicedetail.update_attributes(params[:devicedetail])
       @devicedetail.update_attributes(:nearimage_url => @devicedetail.nearimage.url, :intermediateimage_url => @devicedetail.intermediateimage.url, :farimage_url => @devicedetail.farimage.url)
      flash[:notice] = "Device Details successfully updated..!"
      #@devicedetails = Devicedetail.all(:order => "created_at DESC")
      redirect_to devicedetails_path
    else
      render :action => "edit"
    end 
  end
  
  def destroy
    @devicedetail = Devicedetail.find(params[:id])
    @devicedetail.destroy
    flash[:notice] = "Device Details successfully Deleted..!"
    @devicedetails = Devicedetail.all(:order => "created_at DESC") 
    render :action => 'index'
  end
end
