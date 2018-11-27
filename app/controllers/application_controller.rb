class ApplicationController < ActionController::Base
  # before_action :verify paid
  
  def verify_paid
    @paid = true
  end

  #user login

end
