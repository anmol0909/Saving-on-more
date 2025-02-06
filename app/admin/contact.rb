ActiveAdmin.register Contact do
    menu label: 'Contact Us'
    permit_params :title, :desc
    config.filters = false
    config.clear_action_items!
    actions :all, except: [:destroy, :edit]
  end