class StoriesController < InheritedResources::Base

  def manuscript
    @sections = Section.where(story_id: params[:story_id]).order(sequence: :asc)
    render :layout => false
  end

  private

    def story_params
      params.require(:story).permit(:title, :subtitle, :abbreviated_title, :short_summary, :long_summary, :word_count)
    end
end

