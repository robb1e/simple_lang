RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require './types/types'
require './operators/operators'
require './statements/statements'
require './lang/lang'
