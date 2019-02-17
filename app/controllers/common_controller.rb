class CommonController < ApplicationController

  def words
		@stuff = Proverb.group('chapter').order('count_all').limit(10).count
		@mapped = Proverb.where("chapter = '16'").all.pluck(:verse_text)

		@okay = CommonWord.where("chapter_num = '16'")
  end

end
