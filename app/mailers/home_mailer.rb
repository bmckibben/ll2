class HomeMailer < ActionMailer::Base
  def new_message(feedback, website_url)
    @feedback = feedback
    @website_url = website_url
    mail subject: 'CRG Resource Feedback', reply_to: @feedback.user.email
  end
  def contact(name, email, message)
    @email = email
    @message = message
    @name = name
    mail subject: 'Email from Literallight', to: "ben@literallight.com", reply_to: @email, from: @email
  end  
end
