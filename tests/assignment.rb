require_relative '../simple'

statement = Assign.new(:x, Add.new(Variable.new(:x), Number.new(1)))
environment = {x: Number.new(2)}
Machine.new(statement, environment).run
