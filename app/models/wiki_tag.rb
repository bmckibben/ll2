class WikiTag < ActiveRecord::Base
   belongs_to :wiki
   belongs_to :tag, :foreign_key => "tag_id", :class_name => "Wiki"
   
   def parent
      Wiki.where(id: self.tag_id).pluck(:title)
   end
end
