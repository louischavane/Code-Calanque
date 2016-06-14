class CandidatesController < ApplicationController

  before_action :set_session

  def new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to session_path(@session), notice: "Votre candidature à bien été prise en compte"
    else
      render action: 'new'
      end
  end


  def candidate_params
    params.require("candidate").permit(:last_name, :first_name, :email)
  end

  def set_session
    @session = Session.find(params[:session_id])
  end

end
