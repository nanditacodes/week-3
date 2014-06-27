require 'minitest/autorun'
require 'minitest/pride'
require './bowl'

class BowlTest < MiniTest::Test
  def setup
    @bowl = Bowl.new
  end

  # def test_gutter_game
  #   @bowl.calc_score
  #   assert_equal 0, @bowl.total_score
  # end
  #
   def test_a_spare
     @bowl.frames = [[1,2],[3,4],[4,6],[1,2],[2,3],[3,3],[5,5],[1,2],[0,2],[2,0]]
     @bowl.calc_score
     assert_equal 53, @bowl.total_score
   end

   def test_a_strike
     @bowl.frames = [[1,2],[3,4],[4,6],[10,:no_roll],[2,3],[3,3],[5,5],[1,2],[0,2],[2,0]]
     @bowl.calc_score
     assert_equal 74, @bowl.total_score
   end

   def test_perfect_game
     @bowl.frames = [[10,:no_roll],[10,:no_roll],[10,:no_roll],
                     [10,:no_roll],[10,:no_roll],[10,:no_roll],
                     [10,:no_roll],[10,:no_roll],[10,:no_roll],
                     [10,:no_roll],[10,:no_roll],[10,:no_roll]]
     @bowl.calc_score
     assert_equal 300, @bowl.total_score
   end
  
  #  def test_a_spare_at_the_10th_frame
  #    @bowl.frames = [[1,2],[3,4],[4,6],[10,0],[2,3],[3,3],[5,5],[1,2],[0,2],[3,7],[4,0]]
  #    @bowl.calc_score
  #    assert_equal 86, @bowl.total_score
  #  end
  #
  #  def test_a_strike_at_the_10th_frame
  #    @bowl.frames = [[1,2],[3,4],[4,6],[10,0],[2,3],[3,3],[5,5],[1,2],[0,2],[10,0],[3,4]]
  #    @bowl.calc_score
  #    assert_equal 89, @bowl.total_score
  #  end
  #
  # def test_all_spares
  #   @bowl.frames = [[0,10],[1,9],[2,8],[3,7],[4,6],[5,5],[6,4],[7,3],[8,2],[9,1],[3,0]]
  #   @bowl.calc_score
  #   assert_equal 148, @bowl.total_score
  # end
  #
  # def test_all_spares_with_all_5s
  #   @bowl.frames = [[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,0]]
  #    @bowl.calc_score
  #   assert_equal 150, @bowl.total_score
  # end
  #
  # def test_random_spares
  #   @bowl.frames = [[1,2],[3,4],[4,6],[1,2],[5,5],[3,3],[3,7],[6,4],[0,2],[2,0]]
  #   @bowl.calc_score
  #   assert_equal 73, @bowl.total_score
  # end

end
