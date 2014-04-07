class PatientController < ApplicationController
  def index    
    @remote_ip = request.remote_ip
    @host = request.host_with_port
    
    render :layout => false
  end
  
  def vitals
  end
end
