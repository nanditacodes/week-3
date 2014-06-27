class Bowl
  attr_accessor :score, :frames

  def initialize score=0
    @score = score
    @frames = Array.new(10) {Array.new(2){0}}
  end


  def total_score
    @score
  end

  def create_a_temp_array
    self.frames.each_with_index do |frame, frame_index|
      temp_frame = []
      temp_frame << get_value(frame.first) << get_value(frame.last)
      @temp_frame_array << temp_frame
    end
  end

  def calc_score
    @temp_frame_array = []
    create_a_temp_array
    @temp_frame_array.each_with_index do |frame, frame_index|
      frame_score = @temp_frame_array[frame_index].first +
                    @temp_frame_array[frame_index].last
      if @temp_frame_array[frame_index].first== 10
        self.score = handle_strikes frame_index
      elsif frame_score == 10
        self.score = handle_spares frame_index
      elsif frame_index < 10
        self.score += frame_score
      end
    end

  end

  def handle_spares index
    next_pins = @temp_frame_array[index + 1].first
    self.score += 10 + next_pins
  end

  def handle_strikes index
    return self.score if index > 9
    next_frame = @temp_frame_array[index + 1]
    if (next_frame)
      self.score += 10 + next_frame.inject(:+)
      if next_frame.first == 10
        second_next_frame = @temp_frame_array[index + 2]
        self.score +=  second_next_frame.inject(:+)
      end
    end
    self.score
  end

end

def get_value(item)
  item == :no_roll ? 0 : item
end
