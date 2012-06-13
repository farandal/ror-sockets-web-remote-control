class CumploController < ApplicationController
  protect_from_forgery
  def index
    
    time = Time.new
    @socketid = time.hour+time.min+time.sec+time.usec
    @app_url = App_url
    @socket_url = Socket_url
    
    @prospecto = Prospecto.new
        
  end
  
 
  
end
