class Api::V1::NivBibleController < ApplicationController

  def index
		if !params[:chapNum].nil?
			@proverbs = Proverb.where("chapter = #{params[:chapNum]}").all.pluck(:verse_text)
		else
			@proverbs = Proverb.where("chapter = '1'").all.pluck(:verse_text)
		end
		render json: @proverbs
	end

end
