defmodule Exercise321ETest do
  use ExUnit.Case
  doctest Exercise321E

  test "speaks the time" do
    assert Exercise321E.speak("00:00") == "It's twelve am"
    assert Exercise321E.speak("01:30") == "It's one thirty am"
    assert Exercise321E.speak("12:05") == "It's twelve oh five pm"
    assert Exercise321E.speak("14:01") == "It's two oh one pm"
    assert Exercise321E.speak("20:29") == "It's eight twenty nine pm"
    assert Exercise321E.speak("21:00") == "It's nine pm"
    assert Exercise321E.speak("21:10") == "It's nine ten pm"
    assert Exercise321E.speak("21:13") == "It's nine thirteen pm"
    assert Exercise321E.speak("21:18") == "It's nine eighteen pm"


  end

  test "speaks the hour" do
    assert Exercise321E.speak_hour("00") == "twelve"
    assert Exercise321E.speak_hour("01") == "one"
    assert Exercise321E.speak_hour("02") == "two"
    assert Exercise321E.speak_hour("03") == "three"
    assert Exercise321E.speak_hour("04") == "four"
    assert Exercise321E.speak_hour("05") == "five"
    assert Exercise321E.speak_hour("06") == "six"
    assert Exercise321E.speak_hour("07") == "seven"
    assert Exercise321E.speak_hour("08") == "eight"
    assert Exercise321E.speak_hour("09") == "nine"
    assert Exercise321E.speak_hour("10") == "ten"
    assert Exercise321E.speak_hour("11") == "eleven"
    assert Exercise321E.speak_hour("12") == "twelve"

    assert Exercise321E.speak_hour("13") == "one"
    assert Exercise321E.speak_hour("14") == "two"
    assert Exercise321E.speak_hour("15") == "three"
    assert Exercise321E.speak_hour("16") == "four"
    assert Exercise321E.speak_hour("17") == "five"
    assert Exercise321E.speak_hour("18") == "six"
    assert Exercise321E.speak_hour("19") == "seven"
    assert Exercise321E.speak_hour("20") == "eight"
    assert Exercise321E.speak_hour("21") == "nine"
    assert Exercise321E.speak_hour("22") == "ten"
    assert Exercise321E.speak_hour("23") == "eleven"
  end

  test "speak_minute" do
    assert Exercise321E.speak_minute("00") == ""
  end
end
