class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  #def new
    #@contact = Contact.new
  #end

  #def create
    #@contact = Contact.new(contact_params)

    #if @contact.save && @contact.nope.present?
      #flash.now[:notice] = 'You are a robot, you have no soul, but the soul of your creator is in jeopardy.  Repent and believe in Jesus Christ alone for salvation this very day.'
      exit
    #else
      #ApplicationMailer.contact(@contact).deliver_now
      #flash.now[:notice] = 'Thank you for your message. We will contact you as soon as possible.'
      #flash.now[:error] = 'Cannot send message.'
    #end

    #redirect_to root_path
  #end

  #private

  #def contact_params
    #params.require(:contact).permit(:first_name, :last_name, :address, :phone, :email, :message, :referral, :nope)
  #end
end
