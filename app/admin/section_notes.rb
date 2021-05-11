ActiveAdmin.register SectionNote do
	menu parent: "Sections", :priority => 3
	permit_params :id, :note, :section_id

end
