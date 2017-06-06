garage = {
  surf_rack: {
    longboards: ["Vbowls log", "Colapintail", "Superfish"],
    shortboards: ["Mini Simmons", "Frog Board"]
    },
  cars: ["Toyota Tacoma", "Tesla Model S", "Sprinter"],
  skis: ["Rossi Soul 7s", "Powder Skis", "Race Skis"],
}
p garage[:surf_rack][:longboards][1]
p garage[:cars][2]
garage[:cars].push"Ferrari"
p garage

#alternative ways to do this...

#garage = {
#  "surf_rack" => ["vbowls log", "minisimmons", "stepup"],
#  "cars" => ["Toyota Tacoma", "Tesla Model S", "Sprinter"],
#  "skis" => ["Rossi Soul 7s", "Powder Skis", "Race Skis"],
#}
#p garage['skis'][2]


