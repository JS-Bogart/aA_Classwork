class Employee

  attr_reader :salary

  def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end

end

class Manager < Employee

  attr_reader :employees, :name, :salary, :boss

  def initialize(name, title, salary, boss = nil)
    super(name, title, salary, boss)
    @employees = []
  end

  def bonus(multiplier)
    sub_sum(self) * multiplier
  end

  def add_employee(name, title, salary, boss = self.name)
    @employees << Manager.new(name, title, salary, boss)
  end

  def sub_sum(employee)
    return employee.salary if employee.employees.length == 0
    
    sum = employee.salary
    sum = 0 if employee.boss == nil
    
    employee.employees.each { |employee| sum += sub_sum(employee) }

    sum
  end

end

ned = Manager.new("Ned", "Founder", 1000000)
ned.add_employee("Darren", "TA Manager", 78000)
darren = ned.employees[0]
darren.add_employee("Shawna", "TA", 12000)
darren.add_employee("David", "TA", 10000)

p ned.bonus(2)