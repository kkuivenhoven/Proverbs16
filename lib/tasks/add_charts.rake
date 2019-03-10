namespace :add_charts do

	# This code snippet iterates through each chapter, grabs the word count (i.e. how many times the word is repeated in the chapter) and calculates the values for a box and whisker plot. 
	# The following cases are handled: (1) when there is an even amount of data numbers and (2) when there is an odd amount of data numbers.
	# Once the values are calculated, the value and the array indice are stored for that entry into the BoxWhiskerPlot model.

  desc "TODO"
  task add_box_whisker_data: :environment do
		chapters = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
		chapters.each do |ch|
			@common_sw = CommonWord.where("chapter_num = '#{ch.to_s}'").all.pluck(:verse_num_sw)
			@newHash = CommonWord.getCommonCount(@common_sw)
			@newHash = @newHash.sort_by { |key| key }.to_h
			@sorted = @newHash.sort_by { |key, value| value}
			len = @sorted.length

      if len%2 == 0 
        median = ((@sorted[(len/2)-1][1].to_f + @sorted[(len/2)][1].to_f)/2) 
        first_quartile = @sorted[((len/2)/2)][1].to_f 
        first_quartile_indice = @sorted.index(@sorted[((len/2)/2)])
        third_quartile = @sorted[((len/2)) + ((len/2)/2)][1].to_f 
        third_quartile_indice = @sorted.index(@sorted[((len/2)) + ((len/2)/2)])
      else 
        median = @sorted[(len/2)][1] 
        median_indice = @sorted.index(@sorted[(len/2)])
        if (((len/2)/2)%2 == 0) 
          lowerI = ((len/2)-1) 
          higherI = ((len/2)+1) 
          lli = (lowerI/2) 
          lhi = ((lowerI/2)+1) 
          hli = ((higherI+len)/2) 
          hhi = (((higherI+len)/2)+1) 
          first_quartile = ((@sorted[lli][1].to_f + @sorted[lhi][1].to_f)/2.0) 
          first_quartile_indice = (lli + lhi)/2
          third_quartile = ((@sorted[hli-1][1].to_f + @sorted[hhi-1][1].to_f)/2.0) 
          third_quartile_indice = ((hli-1) + (hhi-1))/2
        else 
          first_quartile = @sorted[((len/2)/2)][1].to_f
          first_quartile_indice = @sorted.index(@sorted[((len/2)/2)])
          third_quartile = @sorted[((len/2)/2) + (len/2) + 1][1].to_f
          third_quartile_indice = @sorted.index(@sorted[((len/2)/2) + (len/2) + 1])
        end 
      end 

			least = @sorted[0][1].to_f
			least_indice = @sorted.index(@sorted[0]).to_i
			greatest = @sorted[len-1][1].to_f
			greatest_indice = @sorted.index(@sorted[len-1]).to_i
			@chart = Chart.new
			@chart.chart_type = 'box_whisker_plot'
			@chart.chapter = ch
			@chart.save
			@bwp = @chart.box_whisker_plots.create(:median => median, :first_quartile => first_quartile, :third_quartile => third_quartile, :least => least, :greatest => greatest, :median_indice => median_indice, :first_quartile_indice => first_quartile_indice, :third_quartile_indice => third_quartile_indice, :least_indice => least_indice, :greatest_indice => greatest_indice)
			puts "CHAPTER: #{ch}"
			@bwp.median = median
			@bwp.median_indice = median_indice
			puts "median_indice: #{median_indice}"
			@bwp.least = least
			@bwp.least_indice = least_indice
			puts "least_indice: #{least_indice}"
			@bwp.greatest = greatest
			@bwp.greatest_indice = greatest_indice
			puts "greatest_indice: #{greatest_indice}"
			@bwp.first_quartile = first_quartile
			@bwp.first_quartile_indice = first_quartile_indice
			puts "first_quartile_indice: #{first_quartile_indice}"
			@bwp.third_quartile = third_quartile
			@bwp.third_quartile_indice = third_quartile_indice
			puts "third_quartile_indice: #{third_quartile_indice}"
			puts "\n"
			@bwp.chart_id = @chart.id
			@bwp.save
			@chart.save
		end
  end

end
