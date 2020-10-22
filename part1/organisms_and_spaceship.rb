# They Came From Space
# Part 1
# Organisms & Spaceship
# Raphael Adams

class Organism
  attr_accessor :name
  attr_accessor :fav_food

  def move
    puts "Walk"
  end

  def print_info
    puts "Name: #{ @name }"
    puts "Favourite food: #{ @fav_food }"
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

  def load_organisms(*orgs_to_load)
    @all_organisms = []
    orgs_to_load.each { |org| @all_organisms << org }
    #@all_organisms.each { |org| puts org }
  end

  def blast_off()
    puts "Gas in litres: #{ @gas }"
    puts "We've reached Kepler-1649c!"
  end
end


prospect1 = Martian.new
prospect1.name = "Marvin"
prospect1.fav_food = "Chips"
# prospect1.print_info
# prospect1.move

prospect2 = Extraterrestrial.new
prospect2.name = "ET"
prospect2.fav_food = "Reeses pieces"
# prospect2.print_info
# prospect2.move

prospect3 = LittleGreenMan.new
prospect3.name = "Wally"
prospect3.fav_food = "Bugs"
# prospect3.print_info
# prospect3.move

prospect4 = Alien.new
prospect4.name = "Darlene"
prospect4.fav_food = "Chocolate"
# prospect4.print_info
# prospect4.move

prospect5 = Spaceman.new
prospect5.name = "Chris"
prospect5.fav_food = "Chicken"
# prospect5.print_info
# prospect5.move

millenium_falcon = Spaceship.new
millenium_falcon.power = 10
millenium_falcon.gas = 50
millenium_falcon.load_organisms(prospect1, prospect2, prospect3, prospect4, prospect5)
millenium_falcon.blast_off