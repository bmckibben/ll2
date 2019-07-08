class SectionNotesController < InheritedResources::Base

	def new
		@section_options = Section.all.order(:sequence)
		@section_note = SectionNote.new
	end
		
  private

    def section_note_params
      params.require(:section_note).permit(:note, :section_id)
    end
end

