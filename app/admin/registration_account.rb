ActiveAdmin.register RegistrationAccount do
  permit_params :business_legal_entity_name, :billing_street_address, :billing_city, :billing_state, :billing_zip_code, :accounts_payable_contact, :accounts_payable_phone_number, :shipping_address, :shipping_city, :shipping_state, :shipping_zip_code, :business_phone_number, :sales_tax_permit
  actions :index, :show, :edit, :update
  form do |f|
    f.inputs "Registration Account Details" do
      f.input :business_legal_entity_name
      f.input :billing_street_address
      f.input :billing_city
      f.input :billing_state
      f.input :billing_zip_code
      f.input :accounts_payable_contact
      f.input :accounts_payable_phone_number
      f.input :shipping_address
      f.input :shipping_city
      f.input :shipping_state
      f.input :shipping_zip_code
      f.input :business_phone_number
      f.input :sales_tax_permit, as: :file
    end

    f.actions
  end
end