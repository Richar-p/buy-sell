ActiveAdmin.register Offer do
  permit_params :name, :description, :email, :price, :phone_number, :validate?, :postal_code
  
  scope :all, default: true
  scope('Need validation') { |offer| offer.where(validate?: false) }

  filter :name
  filter :email
  filter :phone_number
  filter :validate?
  filter :postal_code
  
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone_number
    column :postal_code
    column :validate?
    actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :phone_number
      row :postal_code
      if offer.photo.attached?
        row :photo do
          image_tag url_for(offer.photo), width:'500px'
        end
      end
      row :validate?
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      f.input :postal_code
      f.input :email
      f.input :phone_number
      f.input :photo
      f.input :validate?
    end
    f.actions
  end
end

