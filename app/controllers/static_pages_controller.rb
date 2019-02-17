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
  end

  def proverbs19
		@proverbs19 = Proverb.where("chapter = '19'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
  end

  def proverbs21
		@proverbs21 = Proverb.where("chapter = '21'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
  end

  def proverbs7
		@proverbs7 = Proverb.where("chapter = '7'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
  end

  def proverbs1
		@proverbs1 = Proverb.where("chapter = '1'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
  end

  def proverbs4
		@proverbs4 = Proverb.where("chapter = '4'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
  end

  def proverbs27
		@proverbs27 = Proverb.where("chapter = '27'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
  end

  def proverbs20
		@proverbs20 = Proverb.where("chapter = '20'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
  end

  def proverbs5
		@proverbs5 = Proverb.where("chapter = '5'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
  end

end
