ActiveAdmin.register Story do

permit_params :title, :subtitle, :abbreviated_title, :short_summary, :long_summary, :cover_image

	index do
		column :id
		column :title
		column :updated_at
		column :created_at
		actions
	end
end
