class HomeController < ApplicationController
  def index
  	
  end
  
  def home
  	
  end  

  def contact
    raise params.inspect
  	HomeMailer.send_contact_email(params[:email_name],params[:email_address],params[:email_message]).deliver_now
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

end
