Show.destroy_all
Release.destroy_all
MerchItem.destroy_all

Show.create!([
  { date: "24", month: "Apr", year: "2026", venue: "Pauken Hall",        city: "Berlin, DE",     status: "SOLD OUT",  sold_out: true  },
  { date: "02", month: "May", year: "2026", venue: "Le Périscope",       city: "Lyon, FR",       status: "Tickets",   sold_out: false },
  { date: "07", month: "May", year: "2026", venue: "A‑Trane",            city: "Berlin, DE",     status: "Tickets",   sold_out: false },
  { date: "14", month: "May", year: "2026", venue: "Bimhuis",            city: "Amsterdam, NL",  status: "Tickets",   sold_out: false },
  { date: "21", month: "May", year: "2026", venue: "Porgy & Bess",       city: "Vienna, AT",     status: "Tickets",   sold_out: false },
  { date: "03", month: "Jun", year: "2026", venue: "Jazzhouse",          city: "Copenhagen, DK", status: "Tickets",   sold_out: false },
  { date: "11", month: "Jun", year: "2026", venue: "Cafe OTO",           city: "London, UK",     status: "Tickets",   sold_out: false },
  { date: "18", month: "Jun", year: "2026", venue: "Smalls",             city: "New York, US",   status: "Low stock", sold_out: false },
  { date: "25", month: "Jun", year: "2026", venue: "Village Vanguard",   city: "New York, US",   status: "SOLD OUT",  sold_out: true  },
  { date: "09", month: "Jul", year: "2026", venue: "Jazz à Vienne",      city: "Vienne, FR",     status: "Festival",  sold_out: false },
  { date: "22", month: "Jul", year: "2026", venue: "North Sea Festival", city: "Rotterdam, NL",  status: "Festival",  sold_out: false },
])

Release.create!([
  { position: 1, title: "Hidden Sun",      artist: "12 Tribes of Mars", year: "2026", format: "LP / Digital", image: "hidden-sun-cover.jpg", listen_url: "https://ffm.to/hidden_sun" },
  { position: 2, title: "Ember / Vessel",  artist: nil,                 year: "2025", format: "LP / Digital", fill: "fill-ember", listen_url: "#" },
  { position: 3, title: "Low Countries",   artist: nil,                 year: "2023", format: "LP",            fill: "fill-smoke", listen_url: "#" },
  { position: 4, title: "Breath & Iron",   artist: nil,                 year: "2022", format: "LP / CD",       fill: "fill-iron",  listen_url: "#" },
  { position: 5, title: "Mirror Etudes",   artist: nil,                 year: "2020", format: "EP",            fill: "fill-bone",  listen_url: "#" },
  { position: 6, title: "Kaunas Sessions", artist: nil,                 year: "2019", format: "LP",            fill: "fill-rust",  listen_url: "#" },
  { position: 7, title: "First Light",     artist: nil,                 year: "2017", format: "EP",            fill: "fill-coal",  listen_url: "#" },
])

MerchItem.create!([
  { position: 1, title: "Hidden Sun",      subtitle: "LP — 180g · Green",   price: "€32", badge: "New" },
  { position: 2, title: "Hidden Sun",      subtitle: "LP — Blood Red",       price: "€38", badge: "LTD" },
  { position: 3, title: "Hidden Sun",      subtitle: "Digital + Bonus",      price: "€9"               },
  { position: 4, title: "Tour Tee",        subtitle: "Heavy cotton — Black", price: "€35"              },
  { position: 5, title: "Score Book",      subtitle: "Etudes for solo sax",  price: "€22"              },
  { position: 6, title: "Kaunas Sessions", subtitle: "LP — back in stock",   price: "€25"              },
])

puts "Seeded #{Show.count} shows, #{Release.count} releases, #{MerchItem.count} merch items."
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?