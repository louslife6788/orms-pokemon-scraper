require_relative "environment"

Scraper.new(@db).scrape

all_pokemon = @db.execute("SELECT * FROM pokemon;")


Pokemon.find(2,@db)

# test out your code here!
