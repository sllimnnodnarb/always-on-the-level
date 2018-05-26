class ApplicationController < ActionController::Base
end

def contact
  ContactMailer.contact.deliver_now
  flash[:alert] = "Thank you for contacting us."
  redirect_to root_path
end
