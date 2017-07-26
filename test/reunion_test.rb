require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def test_it_exists
    reunion = Reunion.new("Denver")

    assert_instance_of Reunion, reunion
  end

  def test_it_has_a_name
    reunion = Reunion.new("Denver")

    assert_equal "Denver", reunion.name
  end

  def test_it_has_no_activities
    reunion = Reunion.new("Denver")

    assert_equal [], reunion.activities
  end

  def test_it_can_add_activities
    reunion = Reunion.new("Denver")
    activity_1 = Activity.new("Brunch")

    activity_1.add_participant("Jim", 20)
    activity_1.add_participant("Joe", 40)
    reunion.add_activity(activity_1)

    assert_equal 1, reunion.activities.count
  end
end
