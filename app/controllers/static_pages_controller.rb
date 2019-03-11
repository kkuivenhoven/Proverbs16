class StaticPagesController < ApplicationController
	require 'oxford_dictionary'
	require 'dictionary_lookup'

	before_action :get_book_count
	before_action :set_dictionary

  def home
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

  def proverbs23
		@proverbs23 = Proverb.where("chapter = '23'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '23'").all
		@common_sw = CommonWord.where("chapter_num = '23'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
    @newHash = @newHash.sort_by {|_key, value| value}
		@bwp = Chart.getBwp(23)
  end

  def proverbs24
		@proverbs24 = Proverb.where("chapter = '24'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '24'").all
		@common_sw = CommonWord.where("chapter_num = '24'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
    @newHash = @newHash.sort_by {|_key, value| value}
		@bwp = Chart.getBwp(24)
  end

  def proverbs25
		@proverbs25 = Proverb.where("chapter = '25'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '25'").all
		@common_sw = CommonWord.where("chapter_num = '25'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
    @newHash = @newHash.sort_by {|_key, value| value}
		@bwp = Chart.getBwp(25)
  end

  def proverbs26
		@proverbs26 = Proverb.where("chapter = '26'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '26'").all
		@common_sw = CommonWord.where("chapter_num = '26'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
    @newHash = @newHash.sort_by {|_key, value| value}
		@bwp = Chart.getBwp(26)
  end


  def proverbs28
		@proverbs28 = Proverb.where("chapter = '28'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '28'").all
		@common_sw = CommonWord.where("chapter_num = '28'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
    @newHash = @newHash.sort_by {|_key, value| value}
		@bwp = Chart.getBwp(28)
  end

  def proverbs29
		@proverbs29 = Proverb.where("chapter = '29'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '29'").all
		@common_sw = CommonWord.where("chapter_num = '29'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
    @newHash = @newHash.sort_by {|_key, value| value}
		@bwp = Chart.getBwp(29)
  end

  def proverbs30
		@proverbs30 = Proverb.where("chapter = '30'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '30'").all
		@common_sw = CommonWord.where("chapter_num = '30'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
    @newHash = @newHash.sort_by {|_key, value| value}
		@bwp = Chart.getBwp(30)
  end

  def proverbs31
		@proverbs31 = Proverb.where("chapter = '31'").all.pluck(:verse_text)
		if params[:commit]
			@params = params[:proverb]
		end
		@common = CommonWord.where("chapter_num = '31'").all
		@common_sw = CommonWord.where("chapter_num = '31'").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
    @newHash = @newHash.sort_by {|_key, value| value}
		@bwp = Chart.getBwp(31)
  end

	private
		
		def get_book_count
			@key_values = CommonWord.getBookCount
		end

		def set_dictionary
			@client = OxfordDictionary::Client.new(app_id: 'da2df368', app_key: '68d4697c872564768e7ab948da306934')
		end

end
