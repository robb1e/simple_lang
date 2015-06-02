require_relative '../simple'

puts Number.new(3).evaluate({})
puts Variable.new(:x).evaluate({x: Number.new(3)})
puts LessThan.new(
  Add.new(Variable.new(:x), Number.new(2)),
  Variable.new(:y)
).evaluate({
  x: Number.new(2),
  y: Number.new(5)
})

statement = While.new(
  LessThan.new(Variable.new(:x), Number.new(5)),
  Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
)
puts statement
puts statement.evaluate({ x: Number.new(1)})
