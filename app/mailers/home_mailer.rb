class HomeMailer < ActionMailer::Base
def new_message(feedback, website_url)
    @feedback = feedback
    @website_url = website_url
    mail subject: 'CRG Resource Feedback', reply_to: @feedback.user.email
  end
end
