class ContactController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]
  
    def create
      name = params[:name]
      email = params[:email]
      subject = params[:subject]
      message = params[:message]
  
      session[:thank_you_message] = "Thank you for contacting us, #{name}!"

      if name.present? && subject.present? && message.present?
        render json: { message: 'Form submitted succesfully'}, status: :ok
      else
        render json: { error: 'Please fill in all the fields'}, status: :unprocessable_entity
      end
    
  
      # redirect_to thank_you_path
    end

     
    private

    def thank_you
      @thank_you_message = session.delete(:thank_you_message)
    end
  end
  