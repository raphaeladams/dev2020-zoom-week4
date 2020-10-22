# They Came From Space
# Part 2
# Kepler-1649c
# Raphael Adams

class Organism
  attr_accessor :species_name
  attr_accessor :fav_food

  def move
    puts "Walk"
  end

  def print_info
    puts "Species Name: #{ @species_name }"
    puts "Favourite food: #{ @fav_food }"
    print "How it gets around: "
    move
  end
end

class Martian < Organism
  def move
    puts "Jump"
  end
end

class Extraterrestrial < Organism
  def move
    puts "Crawl"
  end
end

class LittleGreenMan < Organism
end

class Alien < Organism
  def move
    puts "Swim"
  end
end

class Spaceman < Organism
  def move
    puts "Slither"
  end
end

class Spaceship
  attr_accessor :power
  attr_accessor :gas
  attr_accessor :all_organisms

  def load_orgs(*orgs_to_load)
    @all_organisms = []
    orgs_to_load.each { |org| @all_organisms << org }
  end

  def blast_off
    required_gas = 10
    required_power = 10

    print "How many tanks of gas do you want to load? "
    @gas = gets.chomp.to_i
    print "What power level is this ship from 1-20? "
    @power = gets.chomp.to_i

    if @gas < required_gas
      puts "Not enough gas to get to Kepler-1649c, we need #{ required_gas } tanks"
    elsif @power < required_power
      puts "Not enough power to get to Kepler-1649c, we need level #{ required_power }"
    else
      print "Gas level: "
      required_gas.times do
          print "#{ @gas } ... "
          @gas -= 1
      end
      puts "\nWe've reached Kepler-1649c!"
      puts "We have #{ @gas } tanks of gas left."
    end
  end
end

class Planet
  attr_accessor :num_moons
  attr_accessor :dist_from_sun
  attr_accessor :surface_content
  attr_accessor :inhabitants

  def accept_orgs(orgs_to_accept)
    @inhabitants = Hash.new
    orgs_to_accept.each { |org| @inhabitants[org] = 2 }
  end

  def million_years_later
    puts "ONE MILLION YEARS LATER:"
    @inhabitants.each { |org, num| @inhabitants[org] = [true, false].sample ? rand(1000000) : 0 }
    @inhabitants.each { |org, num| puts num == 0? "#{ org.species_name } didn't survive." : "#{ org.species_name }: Population #{ num }"}
  end
end


prospect1 = Martian.new
prospect1.species_name = "Marvin Martius"
prospect1.fav_food = "Chips"

prospect2 = Extraterrestrial.new
prospect2.species_name = "Etraneous Terrestrialis"
prospect2.fav_food = "Reeses pieces"

prospect3 = LittleGreenMan.new
prospect3.species_name = "Parvus Viridans Hominis"
prospect3.fav_food = "Bugs"

prospect4 = Alien.new
prospect4.species_name = "Alienus Predatorius"
prospect4.fav_food = "People"

prospect5 = Spaceman.new
prospect5.species_name = "Spacius Hominis"
prospect5.fav_food = "Chicken"


millenium_falcon = Spaceship.new
millenium_falcon.power = 10
millenium_falcon.gas = 50

millenium_falcon.load_orgs(prospect1, prospect2, prospect3, prospect4, prospect5)
millenium_falcon.blast_off


kepler1649c = Planet.new
kepler1649c.num_moons = 100
kepler1649c.dist_from_sun = 1000000
kepler1649c.surface_content = "Obsidian"

kepler1649c.accept_orgs(millenium_falcon.all_organisms.each)
kepler1649c.million_years_later