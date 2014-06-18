class Grading
  def initialize(data)
    @data = data
  end

  def export_grades(student)
    @data[student]
  end

  def export_up_down_value(student)
    grades = @data[student]
    counter = 0
    up_down = []
    x = 0

    if grades == nil
      up_down
    else
      while counter <= grades.length - 2
        if grades[x] == grades[x + 1]
          up_down << :even
          counter += 1
          x += 1
        elsif grades[x] >= grades[x + 1]
          up_down << :down
          counter += 1
          x += 1
        elsif grades[x] <= grades[x + 1]
          up_down << :up
          counter += 1
          x += 1
        else
          up_down << "poop"
          counter += 1
          x += 1
        end
      end
    end
    up_down.to_s
  end
end