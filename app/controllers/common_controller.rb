class CommonController < ApplicationController
	before_action :get_book_count

  def words
		@stuff = Proverb.group('chapter').order('count_all').limit(10).count
		@mapped = Proverb.where("chapter = '16'").all.pluck(:verse_text)

		@okay = CommonWord.where("chapter_num = '16'")
  end

	def totalCount
		@c_w = CommonWord.all.pluck(:verse_num_sw)
	end

	private
		def get_book_count
			@key_values = CommonWord.getBookCount
		end

end
