ActiveAdmin.register SectionFootnote do
	menu parent: "Sections", :priority => 2
	
	permit_params :id, :section, :a_number, :footnote

	index do
		column :id
		column ("Sort"){|s| s.section.sequence}
		column :section
		column :a_number
		column :footnote
		actions
	end
end
