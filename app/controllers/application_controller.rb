class ApplicationController < ActionController::Base

  def access_denied(exception)
    redirect_to root_path
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end  
  
end
