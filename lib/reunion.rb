require './lib/activity'

class Reunion
attr_reader :name, :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity_name)
    binding.pry
    @activities << activity_name
  end

end
