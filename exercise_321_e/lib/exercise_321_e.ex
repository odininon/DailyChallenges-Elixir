defmodule Exercise321E do
  @moduledoc """
  Documentation for Exercise321E.
  """

  def speak(time) do
    case String.split(time, ":") do
      [h, m] -> String.replace("It's " <> speak_hour(h) <> " " <> speak_minute(m) <> " " <> period(h) , "  ", " ")
    end
  end
  
  def speak_minute(minute) do
    case String.split(minute, "") do 
      ["0", "0", _] -> ""
      ["0", o, _] -> "oh " <> one_to_ten(o)
      [t, "0", _] -> tens(t) 
      [t, o, _] -> tens(t) <> " " <> one_to_ten(o)
    end
  end

  def period(hour) do
    if String.to_integer(hour) < 12 do
      "am"
    else 
      "pm"
    end
  end

  def tens(n) do
    case n do
      "1" -> "ten"
      "2" -> "twenty"
      "3" -> "thirty"
      "4" -> "forty"
      "5" -> "fifty"
    end
  end

  def one_to_ten(n) do
    case n do
      "0" -> ""
      "1" -> "one"
      "2" -> "two"
      "3" -> "three"
      "4" -> "four"
      "5" -> "five"
      "6" -> "six"
      "7" -> "seven"
      "8" -> "eight"
      "9" -> "nine"
    end
  end

  def speak_hour(hour) do
    case String.to_integer(hour) do 
      0 -> "twelve"
      1 -> "one"
      2 -> "two"
      3 -> "three"
      4 -> "four"
      5 -> "five"
      6 -> "six"
      7 -> "seven"
      8 -> "eight"
      9 -> "nine"
      10 -> "ten"
      11 -> "eleven"
      x -> speak_hour(Integer.to_string(x - 12))
    end
  end
end
