class SectionFootnotesController < InheritedResources::Base

  private

    def section_footnote_params
      params.require(:section_footnote).permit(:text, :integer)
    end
end

