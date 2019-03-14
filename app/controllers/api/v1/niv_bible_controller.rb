class Api::V1::NivBibleController < ApplicationController

  def index
		@chapter = Hash.new
		if !params[:chapNum].nil?
			@verses = Hash.new
			@proverbs = Proverb.where("chapter = #{params[:chapNum]}").all.pluck(:verse_num, :verse_text).to_h
			@rec_nsw = CommonWord.where("chapter_num = #{params[:chapNum]}").all
			@common_sw = CommonWord.where("chapter_num = #{params[:chapNum]}").all.pluck(:verse_num_sw)
			@ch_common_sw = CommonWord.getCommonCount(@common_sw)
			@verses["verses"] = @proverbs
			@verses["rec_nsw"] = @rec_nsw
			@verses["stop_worded_verses"] = @ch_common_sw
			@chapter[params[:chapNum]] = @verses
		else
			chapters = Chart.pluck(:chapter)
			chapters.each do |c|
				@verses = Hash.new
				@proverbs = Proverb.where("chapter = #{c}").all.pluck(:verse_num, :verse_text).to_h
				@rec_nsw = CommonWord.where("chapter_num = #{params[:chapNum]}").all
				@common_sw = CommonWord.where("chapter_num = #{c}").all.pluck(:verse_num_sw)
				@ch_common_sw = CommonWord.getCommonCount(@common_sw)
				@verses["verses"] = @proverbs
				@verses["rec_nsw"] = @rec_nsw
				@verses["stop_worded_verses"] = @ch_common_sw
				@chapter[c] = @verses
			end
		end
		render json: @chapter
	end

end
