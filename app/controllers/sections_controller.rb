class SectionsController < InheritedResources::Base

  before_action :authenticate_user!, except: [:index]
  
  def edit_note_modal
  	@section = Section.find(params[:section_id])

  	if !params[:note_id].nil?
  		@note = @section.section_notes.find(params[:note_id])
  	else
  		@note = @section.section_notes.build()
  	end
  	render 'edit_note_modal.js.erb'
  end

  def edit_footnote_modal
    @section = Section.find(params[:section_id])

    if !params[:footnote_id].nil?
      @footnote = @section.section_footnotes.find(params[:footnote_id])
    else
      @footnote = @section.section_footnotes.build()
    end   
    render 'edit_footnote_modal.js.erb'
  end

  def index
    @sections = Section.where(story_id: params[:story_id]).order(sequence: :asc)
  end

  private

    def section_params
      params.require(:section).permit(:title, :sequence, :summary, :body, :throughline, :resolution, :conflict, :story_id)
    end
end
