
class ClienteController < MobileController
  
  def index
    
    
  end
  
  
  def suscribirse
    
    @app_url = App_url
    @socket_url = Socket_url
    @channel_id = params[:channel_id]
    
    @prospecto = Prospecto.new
    
  end
  
  
end
