# frozen_string_literal: true

# Matches each giver with a receiver
class Santa
  def receivers(list_of_givers)
    list_of_givers.rotate(1)
  end

  def shuffle(list_of_givers)
    list_of_givers.shuffle
  end
end
