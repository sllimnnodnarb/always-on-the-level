class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

def contact
  ContactMailer.contact.deliver_now
  flash[:alert] = "Thank you for contacting us."
  redirect_to root_path
end
