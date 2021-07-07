# {
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Becca Tilley",
#       "age":        "27",
#       "hometown":   "Shreveport, Louisiana",
#       "occupation": "Chiropractic Assistant",
#       "status":     "Eliminated Week 8"
#     }
#   ],
#   "season 29": [
#     {
#       "name":      "Ashley Yeats",
#       "age":       "24",
#       "hometown":  "Denver, Colorado",
#       "occupation":"Dental Assitant",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Sam Grover",
#       "age":        "29",
#       "hometown":   "New York, New York",
#       "occupation": "Entertainer",
#       "status":     "Eliminated Week 6"
#     }
#   ]
# }

def get_first_name_of_season_winner(data, season)
    # code here
    data[season].each do |her|
        if her["status"] == "Winner"
            return her["name"].split(" ")[0]
        end
    end
end

def get_contestant_name(data, occupation)
    # code here
    person = nil

    data.each do |hash_season, contestants_array|
        contestants_array.find do |contestant|
            if contestant["occupation"] == occupation
                person = contestant["name"]
            end
        end
    end
    person
end

# def get_contestant_name(data, occupation)
#    data.each do |season, array|
#        array.each do |people|
#           people.each do |k,v|
#               if v == occupation
#                   return people["name"]
#               end
#           end
#        end
#    end
# end

def count_contestants_by_hometown(data, hometown)
  # code here
    person = []

    data.each do |hash_season, contestants_array|
        contestants_array.each do |contestant|
            if contestant["hometown"] == hometown
                person << hash_season
            end
        end
    end
    person.length
end

# def count_contestants_by_hometown(data, hometown)
#    counter = 0
#    data.each do |season, array|
#       array.each do |hash|
#           hash.each do |k,v|
#               if v == hometown
#               counter += 1
#               end
#           end
#       end
#    end
#    counter
# end

def get_occupation(data, hometown)
    # code here
    data.each do |season, array|
        array.each do |hash|
            hash.each do |k,v|
                if v == hometown
                    return hash["occupation"]
                end
            end
        end
    end
end

def get_average_age_for_season(data, season)
  # code here	  # code here
    age = 0
    count = 0
    data[season].each do |hash|
        hash.each do |k,v|
            if k == "age"
                count += 1
                age += v.to_f
            end
        end
    end
    answer = (age/count).round
    return answer
end

# def get_average_age_for_season(data, season)
#     # code here
#     contestant_ages = data[season].collect do |contestant|
#         contestant["age"].to_i
#     end
#
#     summed_ages = contestant_ages.reduce(0) {|sum, age| sum += age}
#     contestant_count =  contestant_ages.count.to_f
#     (summed_ages/contestant_count).round
# end
