class WikiTagsController < InheritedResources::Base

  private

    def wiki_tag_params
      params.require(:wiki_tag).permit(:wiki_id, :tag_id)
    end
end

