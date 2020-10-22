class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{ contents } in truck bed"
    @cargo = contents
  end
  
end