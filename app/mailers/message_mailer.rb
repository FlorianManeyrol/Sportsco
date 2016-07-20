class MessageMailer < ApplicationMailer
  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.message.subject
  #
  def message_now(message)

  	@message = message

  	

    mail to: @message.seance.user.email,from: @message.user.email, subject: "Nouvelle demande de contact"
  end
end
