class PagesController < ApplicationController
  def home
    @sessions = Session.all
  end

  def program
  end

  def code_vs_calanques
  end

end
