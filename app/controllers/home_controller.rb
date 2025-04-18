class HomeController < ApplicationController
  def index
  	
  end
  
  def home
  	render layout: "application"
  end  

  def contact
    #raise params
  	HomeMailer.contact(params[:contact][:name],params[:contact][:email],params[:contact][:message]).deliver_now
    @message = 'Your message is on the way.'
      
    respond_to do |format|
        format.html {
          redirect_to home_path
        }
        format.js {
          #render(locals: {message: message})
        }
    end
  end	

  def mom
    render layout: "home"
  end
end
