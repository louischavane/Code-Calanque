class AdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.welcome.subject
  #
  def welcome(candidate)
    @candidate = candidate

    mail to: ENV['ADMIN_EMAIL'], subject: "Nouvelle candidature Code & Calanque"
  end
end
