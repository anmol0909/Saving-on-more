class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    mail(to: 'info@savingonmore.com', from: "No-Reply@savingonmore.com" , subject: 'New Contact Form Submission')
  end
end