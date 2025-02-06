class RegistrationAccount < ApplicationRecord
	has_one_attached :sales_tax_permit
	validates :business_legal_entity_name, :billing_street_address, :billing_city, :billing_state, :billing_zip_code, :accounts_payable_contact,:accounts_payable_phone_number, :shipping_address, :shipping_city, :shipping_state, :shipping_zip_code, :business_phone_number, :sales_tax_permit,  presence: true

  def self.ransackable_associations(auth_object = nil)
    ["sales_tax_permit_attachment", "sales_tax_permit_blob"]
  end

	def self.ransackable_attributes(auth_object = nil)
		["created_at", "id", "business_legal_entity_name", 
    "billing_street_address",
    "billing_city",
    "billing_state",
    "billing_zip_code",
    "accounts_payable_contact",
    "accounts_payable_phone_number",
    "shipping_address",
    "shipping_city",
    "shipping_state",
    "shipping_zip_code",
    "business_phone_number",
    "sales_tax_permit",
    "updated_at"]
	end

end
