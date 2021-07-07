def get_first_name_of_season_winner(data, season)


	data[season].each do |info| 
		if info["status"].downcase == "winner"
			return info["name"].split(" ")[0] 
		end
	end
    
end

def get_contestant_name(data, occupation)
	data.each do |seasons, rose_hunters|
		rose_hunters.each do |contestants|
			if contestants["occupation"].downcase == occupation.downcase
				return contestants["name"]
			end
		end
	end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |seasons, rose_hunters|
  	rose_hunters.each do |contestants|
  		if contestants["hometown"] == hometown
  			counter += 1
  		end
  	end
  end
  counter
end


def get_occupation(data, hometown)
  data.each do |seasons, rose_hunters|
    rose_hunters.each do |contestants|
      if contestants["hometown"].downcase == hometown.downcase
      	return contestants["occupation"]
      end
  end
end
end

def get_average_age_for_season(data, season)
  total_age = 0
  number_of_contestants = 0
  
  data[season].each do |rose_hunters|
  	total_age += (rose_hunters["age"]).to_i
  	number_of_contestants += 1
  end
  (total_age / number_of_contestants.to_f).round(0)
end
