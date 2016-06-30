# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/admin_mailer/welcome
  def welcome
    candidate = Candidate.first
    AdminMailer.welcome(candidate)
  end

end
