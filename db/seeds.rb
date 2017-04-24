mike = Diver.new({name: "Mike", password: "mike", email: "mike@home.com"})
mom = Diver.new({name: "mom", password: "mom", email: "mom@home.com"})
dad = Diver.new({name: "dad", password: "dad", email: "dad@home.com"})

florida = Location.new({name: "Florida"})
hawaii = Location.new({name: "hawaii"})
belize = Location.new({name: "belize"})

mike.dives.build({comments: "Dive 1", location: florida})
mom.dives.build({comments: "Mom's dive", location: hawaii})
dad.dives.build({comments: "Dad's dive", location: belize})
mike.dives.build({comments: "Dive 2", location: belize})

mike.save
mom.save
dad.save