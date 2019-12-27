class SectionFootnotesController < InheritedResources::Base

  def create
    
    @footnote = SectionFootnote.new(section_footnote_params)
    respond_to do |format|
      if @footnote.save
        format.html 
        format.js { render  "sections/close_modal.js.erb"}
      else
      	raise @footnote.errors.inspect
        format.html 
        format.js { render "home/error_alert.js.erb", locals: {message: "Note save error"} }
      end
    end
  end

  private

    def section_footnote_params
      params.require(:section_footnote).permit(:a_number, :footnote, :section_id)
    end
end

