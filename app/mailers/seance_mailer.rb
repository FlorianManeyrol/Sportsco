class SeanceMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.seance_mailer.validate.subject
  #
  def creation_confirmation(seance)
    @seance = seance

    mail to: @seance.user.email, subject: "Votre séance a bien été crée"
  end

  def validation(seance)
  	@seance = seance

  	mail to: @seance.user.email, subject: "Votre séance a bien été validé"
  end
end
