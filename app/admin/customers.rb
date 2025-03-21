ActiveAdmin.register Customer do
    permit_params :full_name, :phone_number, :email, :notes, :image
  
    form do |f|
      f.inputs do
        f.input :full_name
        f.input :phone_number
        f.input :email
        f.input :notes
        f.input :image, as: :file
      end
      f.actions
    end
  
    index do
      selectable_column
      id_column
      column :full_name
      column :phone_number
      column :email
      column "Image" do |customer|
        if customer.image.attached?
          image_tag customer.image.variant(resize: "50x50"), class: "admin-customer-img"
        else
          "No Image"
        end
      end
      actions
    end
  
    show do
      attributes_table do
        row :full_name
        row :phone_number
        row :email
        row :notes
        row "Image" do |customer|
          if customer.image.attached?
            image_tag customer.image, size: "100x100"
          else
            "No Image"
          end
        end
      end
    end
  end
  