require 'pry'

class Activity
attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, total_cost)
    @participants[name] = total_cost
  end

  def total_cost
    total = @participants.values.reduce do |sum, cost|
      sum += cost
    end
    total
  end

  def split
    total = total_cost
    each_pay = total / @participants.count
  end

  def owed

  end

end
