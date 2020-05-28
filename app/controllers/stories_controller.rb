class StoriesController < InheritedResources::Base

  def manuscript
  	story = params[:story_id] 
  	@story = Story.find(story)
    @sections = Section.where(story_id: params[:story_id] ).where("draft > 0").order(sequence: :asc)
    render layout: "print"
  end
	
  private

    def story_params
      params.require(:story).permit(:title, :subtitle, :abbreviated_title, :short_summary, :long_summary, :word_count)
    end
end

