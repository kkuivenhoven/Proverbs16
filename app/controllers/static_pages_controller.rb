class StaticPagesController < ApplicationController
  def home
		# @proverbs16 = Proverb.all
		@proverbs16 = Proverb.all.pluck(:verse_text)
  end

  def help
		@proverbs16 = Proverb.all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
  end

end
