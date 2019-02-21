class WikisController < InheritedResources::Base

  private

    def wiki_params
      params.require(:wiki).permit(:title, :user_id, :body, :parent, :version, :deleted, :default_sort, :last_revision)
    end
end

