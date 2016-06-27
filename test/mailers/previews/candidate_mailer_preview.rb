# Preview all emails at http://localhost:3000/rails/mailers/candidate_mailer
class CandidateMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/candidate_mailer/welcome
  def welcome
    candidate = Candidate.first
    CandidateMailer.welcome(candidate)
    AdminMailer.welcome(candidate)
  end

end
