class StaticPagesController < ApplicationController
	require 'oxford_dictionary'

	before_action :get_book_count
	before_action :set_dictionary

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
		@common_sw = CommonWord.where("chapter_num = '16'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(16)
  end

  def proverbs19
		@proverbs19 = Proverb.where("chapter = '19'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '19'").all
		@common_sw = CommonWord.where("chapter_num = '19'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(19)
  end

  def proverbs21
		@proverbs21 = Proverb.where("chapter = '21'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '21'").all
		@common_sw = CommonWord.where("chapter_num = '21'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(21)
  end

  def proverbs7
		@proverbs7 = Proverb.where("chapter = '7'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '7'").all
		@common_sw = CommonWord.where("chapter_num = '7'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(7)
  end

  def proverbs1
		@proverbs1 = Proverb.where("chapter = '1'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '1'").all
		@common_sw = CommonWord.where("chapter_num = '1'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@newHash = @newHash.sort_by { |key| key }.to_h
		@bwp = Chart.getBwp(1)
  end

  def proverbs4
		@proverbs4 = Proverb.where("chapter = '4'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '4'").all
		@common_sw = CommonWord.where("chapter_num = '4'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(4)
  end

  def proverbs27
		@proverbs27 = Proverb.where("chapter = '27'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '27'").all
		@common_sw = CommonWord.where("chapter_num = '27'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(27)
  end

  def proverbs20
		@proverbs20 = Proverb.where("chapter = '20'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '20'").all
		@common_sw = CommonWord.where("chapter_num = '20'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(20)
  end

  def proverbs5
		@proverbs5 = Proverb.where("chapter = '5'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '5'").all
		@common_sw = CommonWord.where("chapter_num = '5'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(5)
  end

  def proverbs18
		@proverbs18 = Proverb.where("chapter = '18'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '18'").all
		@common_sw = CommonWord.where("chapter_num = '18'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(18)
  end

  def proverbs2
		@proverbs2 = Proverb.where("chapter = '2'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '2'").all
		@common_sw = CommonWord.where("chapter_num = '2'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(2)
  end

  def proverbs3
		@proverbs3 = Proverb.where("chapter = '3'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '3'").all
		@common_sw = CommonWord.where("chapter_num = '3'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(3)
  end

  def proverbs6
		@proverbs6 = Proverb.where("chapter = '6'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '6'").all
		@common_sw = CommonWord.where("chapter_num = '6'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(6)
  end

  def proverbs8
		@proverbs8 = Proverb.where("chapter = '8'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '8'").all
		@common_sw = CommonWord.where("chapter_num = '8'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(8)
  end

  def proverbs9
		@proverbs9 = Proverb.where("chapter = '9'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '9'").all
		@common_sw = CommonWord.where("chapter_num = '9'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(9)
  end

  def proverbs10
		@proverbs10 = Proverb.where("chapter = '10'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '10'").all
		@common_sw = CommonWord.where("chapter_num = '10'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(10)
  end

  def proverbs11
		@proverbs11 = Proverb.where("chapter = '11'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '11'").all
		@common_sw = CommonWord.where("chapter_num = '11'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(11)
  end

  def proverbs12
		@proverbs12 = Proverb.where("chapter = '12'").all.pluck(:verse_text)
		@prov12 = Proverb.where("chapter = '12'").all
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '12'").all
		@common_sw = CommonWord.where("chapter_num = '12'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(12)
  end

  def proverbs13
		@proverbs13 = Proverb.where("chapter = '13'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '13'").all
		@common_sw = CommonWord.where("chapter_num = '13'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(13)
  end

  def proverbs14
		@proverbs14 = Proverb.where("chapter = '14'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '14'").all
		@common_sw = CommonWord.where("chapter_num = '14'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(14)
  end

  def proverbs15
		@proverbs15 = Proverb.where("chapter = '15'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '15'").all
		@common_sw = CommonWord.where("chapter_num = '15'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(15)
  end

  def proverbs17
		@proverbs17 = Proverb.where("chapter = '17'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '17'").all
		@common_sw = CommonWord.where("chapter_num = '17'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(17)
  end

  def proverbs22
		@proverbs22 = Proverb.where("chapter = '22'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '22'").all
		@common_sw = CommonWord.where("chapter_num = '22'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
    @newHash = @newHash.sort_by {|_key, value| value}
		@bwp = Chart.getBwp(22)
  end


	private
		
		def get_bwp
		end

		def get_book_count
			@key_values = CommonWord.getBookCount
		end

		def set_dictionary
			@client = OxfordDictionary::Client.new(app_id: 'da2df368', app_key: '68d4697c872564768e7ab948da306934')
		end

end
