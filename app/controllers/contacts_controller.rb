class ContactsController < ApplicationController
  invisible_captcha only: :create, on_spam: :spam_detected

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ApplicationMailer.contact(@contact).deliver_now
      flash.now[:notice] = 'Thank you for your message. We will contact you as soon as possible.'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end

    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :address, :phone, :email, :message, :referral, :nope)
  end

  def spam_detected
    redirect_to root_path, alert "Spam Detected"
  end

end
