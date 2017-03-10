###############################################################################
# Question Four
###############################################################################
# Given a ruby Hash that looks like this:
# var major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]}
# Write a piece of code that loops through the object and prints the following to the console:
# BC has 3 main cities: Vancouver, Victoria, Prince George
# AB has 2 main cities: Edmonton, Calgary
# [Stretch]: Make sure that there is an and before the last one:
# BC has 3 main cities: Vancouver, Victoria and Prince George
# AB has 2 main cities: Edmonton and Calgary

major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]}

i = 0
major_cities.each do |city, province|
  city_list = major_cities[city].insert(-2, "and").join(", ").gsub("and,","and")
  #city_list = .join(", ")
  l = major_cities[city].length
  province = major_cities.keys[i]
  p "#{province} has #{l} main cities: #{city_list}."
  i += 1
end
