class ApplicationMailer < ActionMailer::Base
  default from: 'mnddunn9@gmail.com'
  layout 'mailer'

  def contact(contact)
    @contact = contact
    @recipients =['mnddunn9@gmail.com', 'mnddunn@gvtc.com', 'sllimnodnarb@gmail.com', 'support@littlepilgrimstheology.com']
    mail(
      to: @recipients,
      subject: "Always On The Level Website Contact Form Submission",
      template_path: 'application_mailer',
      template_name: 'contact')
  end

end
