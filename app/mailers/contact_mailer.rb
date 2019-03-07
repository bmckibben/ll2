class ContactMailer < ActionMailer::Base
  def contact(contact_message)
    @contact_message = contact_message
    mail subject: 'Website resource request', reply_to: @contact_message.email
  end
end
