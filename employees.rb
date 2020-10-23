# Employees
# Raphael Adams

class Employee

  attr_reader :name

  def initialize(name = "Anonymous")
    self.name = name
  end

  def name=(name)
    if name == ""
      raise "Name can't be blank"
    end
    @name = name
  end

  def print_name
    puts "Name: #{ name }"
  end

end


class SalariedEmployee < Employee

    attr_reader :salary

    def initialize(name = "Anonymous", salary = 0.0)
      super(name)
      self.salary = salary
    end

    def salary=(salary)
      if salary < 0
        raise "A salary of #{ salary } isn't valid"
      end
      @salary = salary
    end

    def print_pay_stub
      print_name
      pay_for_period = (salary / 365.0) * 14
      formatted_pay = format("$%.2f", pay_for_period)
      puts "Pay this period: #{ formatted_pay }"
    end

end


class HourlyEmployee < Employee

    attr_reader :hourly_wage, :hours_per_week

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
      super(name)
      self.hourly_wage = hourly_wage
      self.hours_per_week = hours_per_week
    end

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

    def turn_into_cashier
      self.hourly_wage = 12.75
      self.hours_per_week = 25
    end

    def print_pay_stub
      print_name
      pay_for_period = hourly_wage * hours_per_week * 2
      formatted_pay = format("$%.2f", pay_for_period)
      puts "Pay this period: #{ formatted_pay }"
    end

end


salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new("John Smith", 14.97, 30)
hourly_employee.print_pay_stub


jim = HourlyEmployee.new("Jim Halpert")
jim.turn_into_cashier
jim.print_pay_stub

dwight = HourlyEmployee.new("Dwight Schrute", 12.75, 25)
pam = HourlyEmployee.new("Pam Beesly", 12.75, 25)
ryan = HourlyEmployee.new("Ryan Howard", 12.75, 25)

stanley = HourlyEmployee.new("Stanley Hudson", 10.50, 20)
kevin = HourlyEmployee.new("Kevin Malone", 10.50, 20)

angela = HourlyEmployee.new("Angela Martin", 19.25, 30)
oscar = HourlyEmployee.new("Oscar Martinez", 19.25, 30)