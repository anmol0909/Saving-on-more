class RegistrationsController < ApplicationController
	def new
		@registration = RegistrationAccount.new
	end

	def create
		@registration = RegistrationAccount.new(registration_params)
		if @registration.save
			# Handle successful registration, e.g., redirect to a confirmation page
			redirect_to confirmation_path
		else
			# Handle registration errors, re-render the form with error messages
			render 'new'
		end
	end

	def confirmation
  end

	private

	def registration_params
		params.require(:registration_account).permit(
			:business_legal_entity_name,
			:billing_street_address,
			:billing_city,
			:billing_state,
			:billing_zip_code,
			:accounts_payable_contact,
			:accounts_payable_phone_number,
			:shipping_address,
			:shipping_city,
			:shipping_state,
			:shipping_zip_code,
			:business_phone_number,
			:sales_tax_permit
		)
	end
end
