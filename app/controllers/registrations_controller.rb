class RegistrationsController < ApplicationController
  caches_page :new
  
  def create
    @registration = Registration.new :email => params[:registration][:email]
    
    if @registration.valid?
      @registration.save
    else
      flash[:error] = @registration.errors
      render :new
    end
  end
end
