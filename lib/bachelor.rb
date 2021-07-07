def get_first_name_of_season_winner(data, season)
  season_contestant_bios = data.select {|year, values| year.to_s == season}
  season_contestant_bios.each do |season, profile| 
    profile.each do |hash|
      if hash["status"] == "Winner"
        return hash["name"].split(/ /).first
      end
    end
  end

end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_bios|
    contestant_bios.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant_bios|
    contestant_bios.each do |hash|
      if hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant_bios|
    contestant_bios.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  total = 0.0
  season_contestant_bios = data.select {|year, values| year.to_s == season}
  season_contestant_bios.each do |season, profile| 
    profile.each do |hash|
      counter += 1 
      total += hash["age"].to_f
    end
  end
  return (total / counter).round
end