ActiveAdmin.register Sell do
  permit_params :description
  config.filters = false

  form do |f|
    f.input :description, as: :ckeditor
  f.actions
  end
end