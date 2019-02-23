class StaticPagesController < ApplicationController
  def home
		# @proverbs16 = Proverb.all
		@proverbs16 = Proverb.all.pluck(:verse_text)
  end

  def proverbs16
		@proverbs16 = Proverb.where("chapter = '16'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '16'").all
  end

  def proverbs19
		@proverbs19 = Proverb.where("chapter = '19'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '19'").all
  end

  def proverbs21
		@proverbs21 = Proverb.where("chapter = '21'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '21'").all
  end

  def proverbs7
		@proverbs7 = Proverb.where("chapter = '7'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '7'").all
  end

  def proverbs1
		@proverbs1 = Proverb.where("chapter = '1'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '1'").all
		@stopWords = StopWord.all
  end

  def proverbs4
		@proverbs4 = Proverb.where("chapter = '4'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '4'").all
  end

  def proverbs27
		@proverbs27 = Proverb.where("chapter = '27'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '27'").all
  end

  def proverbs20
		@proverbs20 = Proverb.where("chapter = '20'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '20'").all
  end

  def proverbs5
		@proverbs5 = Proverb.where("chapter = '5'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '5'").all
  end

  def proverbs18
		@proverbs18 = Proverb.where("chapter = '18'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '18'").all
  end

  def proverbs2
		@proverbs2 = Proverb.where("chapter = '2'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '2'").all
  end

  def proverbs3
		@proverbs3 = Proverb.where("chapter = '3'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '3'").all
  end

  def proverbs6
		@proverbs6 = Proverb.where("chapter = '6'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '6'").all
  end

  def proverbs8
		@proverbs8 = Proverb.where("chapter = '8'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '8'").all
  end

  def proverbs9
		@proverbs9 = Proverb.where("chapter = '9'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '9'").all
  end

  def proverbs10
		@proverbs10 = Proverb.where("chapter = '10'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '10'").all
  end

  def proverbs11
		@proverbs11 = Proverb.where("chapter = '11'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '11'").all
  end

end
