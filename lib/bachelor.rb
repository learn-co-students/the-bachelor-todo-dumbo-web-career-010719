def get_first_name_of_season_winner(data, season)
  win = ""
  data[season].each {|elemObj|
    if elemObj["status"] == "Winner"
      win = elemObj["name"]
      return win.split(" ")[0]
    end
  }

end

def get_contestant_name(data, occupation)
  data.each {|season, elemObjArr|
    #win = elemObjArr[0]["occupation"]
    elemObjArr.each{|personObj|
      if personObj["occupation"] == occupation
        return personObj["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each {|season, elemObjArr|
    #win = elemObjArr[0]["occupation"]
    elemObjArr.each{|personObj|
      if personObj["hometown"] == hometown
        counter += 1
      end
    }
  }
  counter
end

def get_occupation(data, hometown)
  data.each {|season, elemObjArr|
    #win = elemObjArr[0]["occupation"]
    elemObjArr.each{|personObj|
      if personObj["hometown"] == hometown
        return personObj["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  counter = 0
  ageTotal = 0
  data[season].each {|elemObj|
    ageTotal += elemObj["age"].to_f
    counter += 1
  }
  (ageTotal/counter).round
end
