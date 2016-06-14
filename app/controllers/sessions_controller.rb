class SessionsController < ApplicationController
  def show
    @session = Session.find(params[:id])
    @candidate = Candidate.new
  end


end
