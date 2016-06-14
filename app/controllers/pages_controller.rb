class PagesController < ApplicationController
  def home
    @sessions = Session.all
  end

  def program
  end

  def inscription
  end


end
