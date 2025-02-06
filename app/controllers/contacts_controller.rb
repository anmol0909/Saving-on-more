class ContactsController < ApplicationController
	def new
			@contact = Contact.new
	end
	def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_email(@contact).deliver_now
      @notice= "Thank You for Contacting SOM Products, a representative will respond within 1 to 2 business days"
      redirect_to new_contact_path(notice: @notice)
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :email, :message)
  end
end
