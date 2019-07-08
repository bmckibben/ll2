class SectionNotesController < InheritedResources::Base

  private

    def section_note_params
      params.require(:section_note).permit(:note, :section_id)
    end
end

