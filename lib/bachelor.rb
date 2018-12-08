def get_first_name_of_season_winner(data, season)
  # code here
  # data[season][***index]["status"]
  # data[season][***index]["name"]

  data[season].each do |e|
    if e["status"] == "Winner"
      winnerName = e["name"].split
      return winnerName[0]
    end
  end

end

def get_contestant_name(data, occupation)
  # code here
  data.each do |k,v|
    v.each do |e|
      if e["occupation"] == occupation
        return e["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |k,v|
    v.each do |e|
      if e["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |k,v|
    v.each do |e|
      if e["hometown"] == hometown
        return e["occupation"]
      end
    end
  end

end

def get_average_age_for_season(data, season)
  # code here
  ageArr = data[season].collect {|e| e["age"].to_i}
  total = ageArr.inject(0) {|sum, e| sum += e}
  avg = (total.to_f / ageArr.size).round

end
