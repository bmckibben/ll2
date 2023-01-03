module WikiTagsHelper
    def tag_options
      uniq_tags = WikiTag.distinct.pluck(tag_id)
      tag_options = Wiki.where(id: uniq_tags)
    end
end
