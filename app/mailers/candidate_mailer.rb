class CandidateMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.candidate_mailer.welcome.subject
  #
  def welcome(candidate)
    @candidate = candidate

    mail to: candidate.email, subject: 'Merci pour votre candidature'
  end
end
