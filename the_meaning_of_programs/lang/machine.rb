class Machine < Struct.new(:statement, :environment)
  def step
    self.statement, env = statement.reduce(environment)
    self.environment = env || self.environment
  end

  def run
    while statement.reducible?
      puts "#{statement}, #{environment}"
      step
    end
    puts "#{statement}, #{environment}"
  end
end
