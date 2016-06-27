class CandidatesController < ApplicationController


  def new
    @candidate = Candidate.new
    @candidate.session_id = params[:session].to_i if params[:session]
    @session = Session.first
  end


  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to root_path, notice: "Merci, votre candidature à bien été prise en compte"
    else
      render :new
    end
  end


  def candidate_params
    params.require("candidate").permit(:last_name, :first_name, :email, :session_id)
  end

end
