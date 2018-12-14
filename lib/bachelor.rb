require 'pry'
require 'json'
def get_first_name_of_season_winner(data, season) # takes two arguments, hash called `data`, and season. returns *first name* of season's winner
	data.each do |series_num, contestant_arrays|
		if season = series_num
			contestant_arrays.each do |contestant_hash|
				contestant_hash.each do |attributes, info|
					binding.pry
					if contestant_hash["status"] = "Winner"
						return contestant_hash['name'].split[0]					
					end
				end
			end
		end
	end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
