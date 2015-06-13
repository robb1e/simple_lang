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

statement = Assign.new(:y, Add.new(Variable.new(:x), Number.new(1)))
puts statement.to_ruby
puts eval(statement.to_ruby).call({x:3})

statement = If.new(
  Variable.new(:x),
  Assign.new(:y, Number.new(1)),
  Assign.new(:y, Number.new(2))
)
puts statement.to_ruby
puts eval(statement.to_ruby).call({x: false}) #{x: Boolean.new(false)})

puts "*"*10
statement = While.new(
  LessThan.new(Variable.new(:x), Number.new(5)),
  Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
)
puts statement.to_ruby
puts eval(statement.to_ruby).call({x: 1})
