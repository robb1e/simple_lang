require_relative '../simple'

x = Variable.new(:x)
y = Variable.new(:y)
environment = {
  x: Number.new(3),
  y: Number.new(4)
}

Machine.new(
  Add.new(x, y),
  environment
).run
