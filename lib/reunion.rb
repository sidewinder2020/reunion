require './lib/activity'

class Reunion
attr_reader :name, :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity_name)
    @activities << activity_name
  end

  def total_cost
    #bring activities method down to access obj info
    total = @participants.values.reduce do |sum, cost|
      sum += cost
    end
    total
  end

end
