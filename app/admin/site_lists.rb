ActiveAdmin.register SiteLists do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

index do
column :id
column :facebook_id
column :site_name
column :site_photo
column :site_url
column :aliev_flg
column :created_at
column :updated_at
actions
end


  form do |f|
    f.inputs "Admin Details" do
      f.input :facebook_id
      f.input :site_name
      f.input :site_photo
      f.input :site_url
    end
    f.actions
  end

permit_params :facebook_id,:site_name,:site_photo,:site_url,:aliev_flg

end
