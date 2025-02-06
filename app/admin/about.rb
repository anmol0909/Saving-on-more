ActiveAdmin.register About do
  menu label: 'About Us'
  permit_params :title, :desc
  config.filters = false
  config.clear_action_items!
  
  action_item :new, only: :index do
    link_to "New About Us", new_admin_about_path unless About.exists?
  end

  form do |f|
    f.input :title
    f.input :desc, as: :ckeditor
    f.actions
  end
end