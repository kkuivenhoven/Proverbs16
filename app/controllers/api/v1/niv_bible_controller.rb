class Api::V1::NivBibleController < ApplicationController

  def index
		@chapter = Hash.new
		@verses = Hash.new
		if !params[:chapNum].nil?
			@proverbs = Proverb.where("chapter = #{params[:chapNum]}").all.pluck(:verse_num, :verse_text).to_h
			@common_sw = CommonWord.where("chapter_num = #{params[:chapNum]}").all.pluck(:verse_num_sw)
			@verses["verses"] = @proverbs
			@verses["stop_worded_verses"] = @common_sw
			@chapter[params[:chapNum]] = @verses
		else
			@proverbs = Proverb.where("chapter = '1'").all.pluck(:verse_num, :verse_text).to_h
			@common_sw = CommonWord.where("chapter_num = '1'").all.pluck(:verse_num_sw)
			@verses["verses"] = @proverbs
			@verses["stop_worded_verses"] = @common_sw
			@chapter[1] = @verses
		end
		render json: @chapter
	end

end
