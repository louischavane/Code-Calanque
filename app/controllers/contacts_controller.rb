class ContactsController < ApplicationController

  def new
  end

  def create
    response = SubscribeToNewsletter.new(params[:email]).run
    render json: response
  end

end
