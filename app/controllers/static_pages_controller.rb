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

end
