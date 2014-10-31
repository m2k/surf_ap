ActiveAdmin.register SiteLogs do

index do
column :id
column :photo do |topic|
  image_tag(topic.photo, width: '100')
end
column :text
column :url do |u|
	link_to(u.url,u.url,:target => "_blank")
end
column :aliev_flg
column :post_date
column :created_at
column :updated_at
actions
end
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


end
