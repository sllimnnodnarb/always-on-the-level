class ApplicationMailer < ActionMailer::Base
  default from: "mnddunn9@gmail.com"
  layout 'mailer'

  def contact(contact)
    @contact = contact
    @recipients =['mnddunn9@gmail.com', 'sllimnodnarb@gmail.com']
    mail(
      to: @recipients,
      subject: "WellFence Website Contact Form Submission",
      template_path: 'application_mailer',
      template_name: 'contact')
  end

end
