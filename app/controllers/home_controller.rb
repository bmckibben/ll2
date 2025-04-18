class HomeController < ApplicationController
  def index
  	
  end
  
  def home
  	render layout: "application"
  end  

  def contact

  	HomeMailer.contact(params[:email_name],params[:email_address],params[:email_message]).deliver
      message = 'Your message is on the way.'
      type = 'notice'
        respond_to do |format|
        format.html {
          redirect_to home_path
        }
        format.js {
          render(locals: {message: message, type: type})
        }
      end
  end	

  def mom
    render layout: "home"
  end
end
