require 'pry'
require 'json'
def get_first_name_of_season_winner(data, season) 	# takes two arguments, hash called `data`, and season. returns *first name* of season's winner
	data.each do |series_num, contestant_arrays| 	# iterate through data hash to find the corresponding season and contestant arrays
		if season == series_num						# if season matches series_num key
			contestant_arrays.each do |contestant_hash|		# iterate through that season's contestant arrays to find contestant hashes
				contestant_hash.each do |attributes, info|	# iterate through contestant hashes to find attributes and info
					if contestant_hash["status"] == "Winner"		# if a contestant hash's 'status' key points to 'Winner' value
						return contestant_hash["name"].split[0]		# return that contestant's 'name' key value, "first last", split into array,  
					end												# and return index[0] (contestant's first name)
				end
			end
		end
	end
end

def get_contestant_name(data, occupation)		# takes in data hash and occupation string, returns name of woman with that occupation
	data.each do |seasons, contestant_arrays|	# iterate through data hash to find seasons and contestant arrays
		contestant_arrays.each do |contestant_hash|		# iterate through seasons' contestant arrays to find contestant hashes
			contestant_hash.each do |attributes, info|	# iterate through contestant hashes to find attributes and info
				if contestant_hash["occupation"] == occupation 	# if a contestant hash's 'occupation' key matches occupation argument string
					return contestant_hash["name"]		# return that contestant's 'name' key value
				end
			end
		end
	end
end

def count_contestants_by_hometown(data, hometown) # takes two arguments, data hash and string of hometown and returns counter of number of contestants from that hometown
  	hometown_counter = 0					# instantiate hometown_counter var as one of integer 0
  	data.each do |seasons, contestant_arrays|	# iterate through data hash to find seasons and contestant arrays
  		contestant_arrays.each do |contestant_hash|		# iterate through seasons' contestant arrays to find contestant hashes
  			contestant_hash.each do |attribute|	# iterate through contestant hashes to find attributes and info
  				if contestant_hash["hometown"] == hometown  	# if contestant hash's 'hometown' key matches hometown argument
  					hometown_counter += 1		# increment hometown_counter by 1
  				end
  			end
  		end
  	end
  	hometown_counter / 5		# return hometown_counter
  	# binding.pry
end

def get_occupation(data, hometown)	# takes two arguments, data hash and string of hometown and returns occupation of first contestant from that hometown
  contestant_occupations = []	# instantiate contestant_occupations array
  data.each do |seasons, contestant_arrays|	# iterate through data hash to find seasons and contestant arrays
		contestant_arrays.each do |contestant_hash|		# iterate through seasons' contestant arrays to find contestant hashes
			contestant_hash.each do |attributes, info|	# iterate through contestant hashes to find attributes and info
				if contestant_hash["hometown"] == hometown 	# if contestant's 'hometown' key matches hometown argument
					contestant_occupations << contestant_hash["occupation"]		# add that contestant's occupation to contestant_occupations array
				end
			end
		end
	end
	contestant_occupations[0]	# return contestant_occupations at index[0] (first contestant's occupation from hometown argument)
end

def get_average_age_for_season(data, season)	# takes two arguments, data hash and string of season and returns average age of contestants for season
	contestant_ages = []
	data.each do |series_num, contestant_arrays| 	# iterate through data hash to find the corresponding season and contestant arrays
		if season == series_num						# if season matches series_num key
			contestant_arrays.each do |contestant_hash|		# iterate through that season's contestant arrays to find contestant hashes
				contestant_hash.each do |attributes, info|	# iterate through contestant hashes to find attributes and info
					contestant_ages << contestant_hash["age"].to_f
				end
			end
		end
	end
	(contestant_ages.reduce(:+) / contestant_ages.size).round
end
