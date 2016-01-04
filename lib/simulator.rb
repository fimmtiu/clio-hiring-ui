class Simulator

  def initialize(seating_arrangement)
    @seats = seating_arrangement
  end

  def verdict
    opinions = state.flatten
    hard, soft = opinions.count(:hard), opinions.count(:soft)
    return :hard if hard > soft
    return :soft if soft > hard
    return :none
  end

  def state
    @seats
  end

  def next
    new_state = @seats.map(&:dup)
    @seats.each_with_index do |row, y|
      row.each_with_index do |current_opinion, x|
        opinions = neighbour_opinions(x, y)
        hard, soft = opinions.count(:hard), opinions.count(:soft)

        if current_opinion == :none
          if hard + soft == 3
            new_state[y][x] = hard > soft ? :hard : :soft
          end

        elsif hard + soft < 2 || hard + soft > 3
          new_state[y][x] = :none
        end
      end
    end
    @seats = new_state
  end

  def width
    @seats[0].length
  end

  def height
    @seats.length
  end

  private

  def neighbour_opinions(x, y)
    x_coords = [x - 1, x, x + 1].reject {|n| n < 0 || n >= width }
    y_coords = [y - 1, y, y + 1].reject {|n| n < 0 || n >= height }
    neighbour_coords = x_coords.product(y_coords) - [[x, y]]
    neighbour_coords.map {|xy| @seats[xy[1]][xy[0]] }
  end

end
