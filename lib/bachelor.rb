def get_first_name_of_season_winner(data, season)
  return data[season].find{|x| x["status"] == "Winner"}["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  data.values.each do |ele|
    if ele.find{|x| x["occupation"] == occupation}
      return ele.find{|x| x["occupation"] == occupation}["name"]
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count_hash = {}
  data.each do |season, array|
    array.each do |hash|
      hash.each do |key, value|
        if hash["hometown"] == hometown
          count_hash[hash] = value
        end
      end
    end
  end

  return count_hash.length
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |hash|
      hash.each do |key, value|
        if hash["hometown"] == hometown
          return hash["occupation"]
        end
      end
    end
  end

end

def get_average_age_for_season(data, season)
  p season
  count = 0
  divisor = 0
  data[season].each do |hash|
    hash.each do |key, value|
      if key == "age"
        count += value.to_f
        divisor += 1
      end
    end
  end
  return (count/divisor).round
end