require 'rspec'
require 'grading.rb'

describe Grading do
  it 'returns the grades for a particular student' do
    data = {
      "Bryon Zieme" => [18, 57, 91, 63, 17, 36, 87, 40, 38, 40, 43, 57],
      "Ivy Hayes" => [85, 84, 86, 14, 14, 26, 92, 36, 95, 84, 67, 46],
      "Darian Smith" => [71, 4, 27, 21, 69, 62, 65, 64, 38, 35, 41, 19],
      "Johanna Turcotte" => [9, 30, 80, 63, 51, 60, 42, 11, 96, 96, 67, 94],
      "Selina Howell" => [95, 79, 27, 6, 63, 31, 40, 72, 63, 41, 28, 16],
      "Vidal Hyatt" => [49, 4, 94, 37, 33, 16, 76, 33, 59, 94, 28, 86],
      "Laurianne Stiedemann" => [27, 22, 91, 40, 13, 75, 86, 64, 10, 66, 78, 23],
      "Julia Swift" => [48, 76, 89, 47, 13, 34, 44, 32, 54, 3, 39, 23],
    }

    expected = [71, 4, 27, 21, 69, 62, 65, 64, 38, 35, 41, 19]
    actual = Grading.new(data).export_grades("Darian Smith")
    expect(actual).to eq expected
  end

  it 'returns an up/down value for each grade' do
    data = {
      "Bryon Zieme" => [18, 57, 91, 63, 17, 36, 87, 40, 38, 40, 43, 57],
      "Ivy Hayes" => [85, 84, 86, 14, 14, 26, 92, 36, 95, 84, 67, 46],
      "Darian Smith" => [71, 4, 27, 21, 69, 62, 65, 64, 38, 35, 41, 19],
      "Johanna Turcotte" => [9, 30, 80, 63, 51, 60, 42, 11, 96, 96, 67, 94],
      "Selina Howell" => [95, 79, 27, 6, 63, 31, 40, 72, 63, 41, 28, 16],
      "Vidal Hyatt" => [49, 4, 94, 37, 33, 16, 76, 33, 59, 94, 28, 86],
      "Laurianne Stiedemann" => [27, 22, 91, 40, 13, 75, 86, 64, 10, 66, 78, 23],
      "Julia Swift" => [48, 76, 89, 47, 13, 34, 44, 32, 54, 3, 39, 23],
    }

    expected = "[:down, :up, :down, :up, :down, :up, :down, :down, :down, :up, :down]"
    actual = Grading.new(data).export_up_down_value("Darian Smith")
    expect(actual).to eq expected
    end
  
  it 'returns an empty array when given an empty array' do
    data = {
      "Bryon Zieme" => [18, 57, 91, 63, 17, 36, 87, 40, 38, 40, 43, 57],
      "Ivy Hayes" => [85, 84, 86, 14, 14, 26, 92, 36, 95, 84, 67, 46],
      "Darian Smith" => [71, 4, 27, 21, 69, 62, 65, 64, 38, 35, 41, 19],
      "Johanna Turcotte" => [9, 30, 80, 63, 51, 60, 42, 11, 96, 96, 67, 94],
      "Selina Howell" => [95, 79, 27, 6, 63, 31, 40, 72, 63, 41, 28, 16],
      "Vidal Hyatt" => [49, 4, 94, 37, 33, 16, 76, 33, 59, 94, 28, 86],
      "Laurianne Stiedemann" => [27, 22, 91, 40, 13, 75, 86, 64, 10, 66, 78, 23],
      "Julia Swift" => [48, 76, 89, 47, 13, 34, 44, 32, 54, 3, 39, 23],
    }

    expected = "[]"
    actual = Grading.new(data).export_up_down_value([])
    expect(actual).to eq expected
  end
end