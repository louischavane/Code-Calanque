class SessionsController < ApplicationController
  def show
    @session = Session.find(params[:id])
    @candidate = Candidate.new
  end

  def candidate
    @session = Session.find(params[:id])
    @candidate = @session.candidates.build(candidate_params)
    if @candidate.save
      redirect_to session_path(@session), notice: "votre inscription à été prise en compte"
    else
      render :action => :show
    end
  end


  def candidate_params
    params.require("candidate").permit(:last_name, :first_name, :email)
  end


end
