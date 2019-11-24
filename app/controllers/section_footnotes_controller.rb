class SectionFootnotesController < InheritedResources::Base

	def new
		@section_options = SectionFootnote.all
		@section_footnote = SectionFootnote.new
	end

  private

    def section_footnote_params
      params.require(:section_footnote).permit(:a_number, :footnote, :section_id)
    end
end

