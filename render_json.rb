require 'json'
def render_jason
    file = File.read("employees.txt")
    return JSON.parse(file)
end

#puts render_jason.class

nombres = %w(lenin thiago amara) 
for i in 0..nombres.length
    puts i
end