class RegistrationsController < ApplicationController
  # OPTIMIZE: find a way to cache without leaving a stale authenticity token
  # caches_page :new
  
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
