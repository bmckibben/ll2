class SectionNotesController < InheritedResources::Base

	def new
		@section_options = Section.all.order(:sequence)
		@section_note = SectionNote.new
	end
  
  # def create
  #   @note = SectionNote.new(params)
  #   respond_to do |format|
  #     if @note.save
  #       format.html 
  #       format.js { render  "sections/close_modal.js.erb"}
  #     else
  #       format.html 
  #       format.json { render "home/error_alert.js.erb", locals: {message: "Note save error"} }
  #     end
  #   end
  # end

  private

    def section_note_params
      params.require(:section_note).permit(:note, :section_id)
    end
end

