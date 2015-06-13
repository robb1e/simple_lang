require_relative './fa_rule'
require_relative './dfa_rulebook'

rulebook = DFARulebook.new([
  FARule.new(1, 'a', 2), FARule.new(1, 'b', 1),
  FARule.new(2, 'a', 2), FARule.new(2, 'b', 3),
  FARule.new(3, 'a', 3), FARule.new(3, 'b', 3)
])
puts rulebook.rule_for(1, 'a')
puts rulebook.next_state(1, 'a')
puts rulebook.rule_for(1, 'b')
puts rulebook.next_state(1, 'b')
puts rulebook.rule_for(2, 'b')
puts rulebook.next_state(2, 'b')
