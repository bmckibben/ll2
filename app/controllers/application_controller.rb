class ApplicationController < ActionController::Base

  respond_to :html, :jason

  def access_denied(exception)
    redirect_to root_path
  end

end
