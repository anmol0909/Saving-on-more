class CreateRegistrationAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :registration_accounts do |t|
      t.string :business_legal_entity_name
      
      t.string :billing_street_address
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip_code
      t.string :accounts_payable_contact
      t.string :accounts_payable_phone_number

      t.string :shipping_address
      t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_zip_code
      t.string :business_phone_number

      t.binary :sales_tax_permit, limit: 2.megabytes

      t.timestamps
    end
  end
end
