class ContactsController < SupportController
  skip_before_action :verify_authenticity_token
  prepend_before_action :check_captcha, only: [:create]
  
  respond_to :html

  private

  def check_captcha
  	@contact_message = ContactMessage.new(contact_params)
    unless verify_recaptcha(model: @contact_message)
    	flash[:recaptcha_error] = "reCAPTCHA verification failed, please try again."
    	render :new 
    end
  end

end
