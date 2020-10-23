# Employees
# Raphael Adams

class Employee

  attr_reader :name

  def name=(name)
    # code to validate & set @name
  end

  def print_name
    puts "Name: #{ name }"
  end

end


class SalariedEmployee < Employee

    attr_reader :salary

    def salary=(salary)
      # code to validate & set @salary
    end

    def print_pay_stub
      print_name
      pay_for_period = (salary / 365.0) * 14
      formatted_pay = format("%.2f", pay_for_period)
      puts "Pay this period: #{ formatted_pay }"
    end

end


salaried_employee = SalariedEmployee.new
salaried_employee.name = "Jane Doe"
salaried_employee.salary = 50000
salaried_employee.print_pay_stub