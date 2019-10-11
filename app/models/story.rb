# == Schema Information
#
# Table name: stories
#
#  id                :integer          not null, primary key
#  title             :text
#  subtitle          :text
#  abbreviated_title :string(255)
#  short_summary     :text
#  long_summary      :text
#  word_count        :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Story < ActiveRecord::Base
	has_many :sections

	def wordcount
		count = 0
		words = self.sections.pluck(:body)
		words.each do |text|
			count += text.strip_tags.split.size unless text.nil?
		end	
		return count
	end

end
