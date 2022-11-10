class SectionsController < InheritedResources::Base

  before_action :authenticate_user!, except: [:index]
  
  def edit_note_modal
    
  	@section = Section.find(params[:section_id])

  	if !params[:note_id].nil?
  		@note = @section.section_notes.find(params[:note_id])
  	else
  		@note = @section.section_notes.build()
  	end
    respond_to do |format|
      format.html {render file: "#{Rails.root}/public/404.html", layout: false}
      format.js {render 'edit_note_modal.js.erb'}
    end     
  end

  def edit_footnote_modal
    #binding.pry

    if !params[:footnote_id].nil?
      @footnote = SectionFootnote.find(params[:footnote_id])
      @section = Section.find(@footnote.section_id)
    else
      @section = Section.find(params[:section_id])
      @footnote = @section.section_footnotes.build()
    end   
    render 'edit_footnote_modal.js.erb'
  end

  def index
    @sections = Section.where(story_id: params[:story_id]).order(sequence: :desc)
  end

  def chapters
    @sections = Section.where(story_id: params[:story_id]).order(sequence: :asc)
  end  
    
  def notes
    @chapters = Section.where(story_id: params[:story_id]).order(sequence: :asc)
  end
  
  def summaries
    story_id = params[:story_id] || 3
    @chapters = Section.where(story_id: story_id).order(sequence: :asc)
  end

  private

    def section_params
      params.require(:section).permit(:title, :sequence, :summary, :body, :throughline, :resolution, :conflict, :story_id, :draft)
    end
end
