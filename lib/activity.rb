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

  # def owed
  #   split_total = split
  #   binding.pry
  #     @participants.values.map do |amnt_owed|
  #     indv_amnt_owed = split_total - amnt_owed
  #     @participants.values # throw the ind amnt in there
  #   end
  #   indv_amnt_owed
  # end

end
