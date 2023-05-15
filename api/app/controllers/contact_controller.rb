class ContactController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]
  
    def create
      name = params[:name]
      email = params[:email]
      subject = params[:subject]
      message = params[:message]
  
      session[:thank_you_message] = "Thank you for contacting us, #{name}!"
  
      redirect_to thank_you_path
    end
  
    def thank_you
      @thank_you_message = session.delete(:thank_you_message)
    end
  end
  