ActiveAdmin.register Section do
	menu parent: "Sections", :priority => 1

	index do
		column :id
		column :sequence
		column :draft
		column :title
		column :updated_at
		column :created_at
		actions
	end
end
