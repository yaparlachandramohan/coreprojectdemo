class ApiController < ApplicationController

#Api for to get Device Details by device no  

  def get_devicedetails
    ActiveRecord::Base.include_root_in_json = false
    @devicedetail = Devicedetail.find_by_deviceno(params[:device_no])
    respond_to do |devicedetails|
      devicedetails.json { render :json => {:results => @devicedetail }, :callback => params[:callback]}
    end
  end
end
