module Services
  class EmployeeService
    require 'json'

    def findAll
      employees= File.read("employees.txt")
      JSON.parse(employees)
    end
  end
end
