class HtmlPagesController < InheritedResources::Base

  private

    def html_page_params
      params.require(:html_page).permit(:title, :content, :active, :slug)
    end
end

