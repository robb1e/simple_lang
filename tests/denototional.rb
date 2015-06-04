require_relative '../simple'

r = Number.new(5).to_ruby
puts r
p = eval(r)
puts p.call({})

expression = Variable.new(:x)
puts expression.to_ruby
puts eval(expression.to_ruby).call({x:7})

expression = Add.new(Number.new(1), Variable.new(:x))
puts expression.to_ruby
puts eval(expression.to_ruby).call({x:1})

