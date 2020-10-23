# Employees
# Raphael Adams

class Employee

  attr_reader :name

  def name=(name)
    if name == ""
      raise "Name can't be blank"
    end
    @name = name
  end

  def initialize(name = "Anonymous")
    self.name = name
  end

  def print_name
    puts "Name: #{ name }"
  end

end


class SalariedEmployee < Employee

    attr_reader :salary

    def salary=(salary)
      if salary < 0
        raise "A salary of #{ salary } isn't valid"
      end
      @salary = salary
    end

    def initialize(name = "Anonymous", salary = 0.0)
      super(name)
      self.salary = salary
    end  

    def print_pay_stub
      print_name
      pay_for_period = (salary / 365.0) * 14
      formatted_pay = format("$%.2f", pay_for_period)
      puts "Pay this period: #{ formatted_pay }"
    end

end


class HourlyEmployee < Employee

    def self.temp(name)
      HourlyEmployee.new(name, 10.50, 20)
    end
  
    def self.salesman(name)
      HourlyEmployee.new(name, 12.75, 25)
    end
  
    def self.accountant(name)
      HourlyEmployee.new(name, 19.25, 30)
    end
  
    attr_reader :hourly_wage, :hours_per_week

    def hourly_wage=(hourly_wage)
      if hourly_wage < 0
        raise "A wage of #{ hourly_wage } isn't valid"
      end
      @hourly_wage = hourly_wage
    end

    def hours_per_week=(hours_per_week)
      if hours_per_week < 0
        raise "#{ hours_per_week } is invalid"
      end
      @hours_per_week = hours_per_week
    end

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
      super(name)
      self.hourly_wage = hourly_wage
      self.hours_per_week = hours_per_week
    end

    def print_pay_stub
      print_name
      pay_for_period = hourly_wage * hours_per_week * 2
      formatted_pay = format("$%.2f", pay_for_period)
      puts "Pay this period: #{ formatted_pay }"
    end

end


jim = HourlyEmployee.salesman("Jim Halpert")
dwight = HourlyEmployee.salesman("Dwight Schrute")
pam = HourlyEmployee.salesman("Pam Beesly")
stanley = HourlyEmployee.salesman("Stanley Hudson")

ryan = HourlyEmployee.temp("Ryan Howard")

kevin = HourlyEmployee.accountant("Kevin Malone")
angela = HourlyEmployee.accountant("Angela Martin")
oscar = HourlyEmployee.accountant("Oscar Martinez")

jim.print_pay_stub
ryan.print_pay_stub
angela.print_pay_stub