require 'observer'

class Employee
  include Observable

  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    add_observer(Payroll.new)
    add_observer(TaxMan.new)
  end

  def salary=(new_salary)
    @salary = new_salary
    changed
    notify_observers(self)
  end
end

class Payroll
  def update(changed_employee)
    puts "Salary has been changed to #{changed_employee.salary}! We need to apply a new payroll."
  end
end

class TaxMan
  def update(changed_employee)
    puts "Sent new tax form to #{changed_employee.name}!"
  end
end

koto = Employee.new('koto', 'hata', 5000)
koto.salary = 6000
koto.salary = 7000
