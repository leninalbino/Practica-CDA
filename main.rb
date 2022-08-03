require "byebug"
employees = []
loop do

    puts "Welcome Mr. User"
    puts "select the desired option: "
    puts "1. List of Employees \n2. Find Empleado By Nit \n3. Created Employee \n4. Delete Employee By Nit \n5. Reportes \n6. Exit"

    valor = gets.to_i
    #byebug
    if valor != 0
        case valor
            
            when 1
                puts "List of Employees"
                employees.each do |atribute|
                    #byebug
                    atribute.each do |key,value|
                        puts "#{key}:#{value}"
                    end
                end
            when 2
                puts "Find Employee By Nit"
                puts "\nInsert the Nit"
                id=gets.to_i
                employees.each do |atribute|
                    #byebug
                    if atribute[:nit]==id
                        atribute.each do |key, value|
                            puts "#{key}:#{value}"
                        end
                    end  
                end
            when 3
                puts "Created Employee"
                puts "Insert Dni"
                id=gets.to_i
                puts "Insert Name"
                name=gets
                puts "Insert Salary"
                salary=gets.to_f
                byebug
                employees.each do |atribute|
                    byebug
                    if atribute[:nit]==id
                        puts "El DNI ya existe"
                    else
                        employees.push({
                            nit:id,
                            name:name,
                            salary:salary
                        })
                    end  
                end
                
            when 4
                puts "Delete Employee By Nit"
                puts "\nInsert the Nit"
                id=gets.to_i
                #byebug
                employees.delete_if{|employee| employee[:nit]==id}
                #byebug
            when 5
                puts "Reports"
                puts "select the desired option: "
                puts "1. Total Count of Employees \n2. Total employees wages"
                input = gets.to_i
                case input
                    when 1
                        total_employees=employees.count
                        puts "------------------------------"
                        puts "Total of Employees is: ""#{ total_employees}"
                        puts "------------------------------"
                        #byebug
                        name_employees=employees.group_by{|employee|employee[:name]}
                        name_employees.each do |key, values|
                            puts "------------------------------"
                            puts "Name: "+ "#{key}"+"Number of repeated names: " + "#{values.count}"
                            puts "------------------------------"
                        end
                    when 2
                        puts "Total employee wages: "
                        #byebug
                        salary_employees = employees.sum {|employee| employee[:salary]}
                        puts "------------------------------"
                        puts "Total of salaries Employees is: ""#{ salary_employees}"
                        puts "------------------------------"
                end
            when 6 
                break
        end
    
    else
        puts "debe ingresar un valor"
    end
end

