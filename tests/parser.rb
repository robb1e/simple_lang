require 'treetop'
require_relative '../simple'

Treetop.load('simple')
parse_tree = SimpleParser.new.parse('while (x < 5) { x = x * 3 }')
puts parse_tree.to_ast
puts parse_tree.to_ast.evaluate({x:Number.new(1)})
