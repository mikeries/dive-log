mike = Diver.new({name: "Mike", password: "mike", 
                  email: "mike@home.com", password_confirmation: "mike"})
mom = Diver.new({name: "mom", password: "mom", 
                  email: "mom@home.com", password_confirmation: "mom"})
dad = Diver.new({name: "dad", password: "dad", email: "dad@home.com",
                  password_confirmation: "dad"})

florida = Location.new({
  name: "Florida",
  city: "Key Largo",
  country: "United States"
})

hawaii = Location.new({
  name: "Maui",
  city: "Kehei",
  country: "United States"
})

belize = Location.new({
  name: "Blue Hole",
  city: "Ambergris Key",
  country: "Belize"
})

mike.dives.build({
  comments: "Dive 1", 
  location: florida, 
  datetime: "2/10/2013",
  ballast: 8,
  duration: 57,
  max_depth: 40,
  starting_pressure: 3000,
  final_pressure: 743
})
mom.dives.build({
  comments: "Mom's dive", 
  location: hawaii, 
  datetime: "8/10/2015",
  ballast: 10,
  duration: 72,
  max_depth: 43,
  starting_pressure: 2983,
  final_pressure: 621
})
dad.dives.build({
  comments: "Dad's dive", 
  location: belize, 
  datetime: "6/20/2014",
  ballast: 15,
  duration: 45,
  max_depth: 58,
  starting_pressure: 3103,
  final_pressure: 632
})
mike.dives.build({
  comments: "Dive 2", 
  location: belize, 
  datetime: "6/20/2014",
  ballast: 8,
  duration: 45,
  max_depth: 64,
  starting_pressure: 2983,
  final_pressure: 654
})

mike.save
mom.save
dad.save