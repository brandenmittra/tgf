class RegistrationController < ApplicationController

def new
		@registration = Registration.new
	end

  def create
    @registration = Registration.new(params[:registration])
    
    if @registration.valid?
      RegistrationsMailer.new_registration(@registration).deliver
      redirect_to(live_path, :notice => "Thanks for your interest, we'll be in touch.")

    else
      redirect_to(root_path, :notice => "Please enter a valid email address.")
    end
  end

end
