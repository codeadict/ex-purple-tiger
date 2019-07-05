defmodule ExPurpleTigerTest do
  use ExUnit.Case
  alias ExPurpleTiger.Data
  doctest ExPurpleTiger

  @known_text "my ugly input string"

  test "should turn string input into an animal hash" do
    expected = {:ok, "rapid grey rattlesnake"}
    assert ExPurpleTiger.animal_hash(@known_text) == expected
  end

  test "should use a specified separator" do
    expected = {:ok, "rapid-grey-rattlesnake"}
    assert ExPurpleTiger.animal_hash(@known_text, separator: "-") == expected
  end

  test "should support titlecase style" do
    expected = {:ok, "Rapid Grey Rattlesnake"}
    assert ExPurpleTiger.animal_hash(@known_text, style: :titlecase) == expected
  end

  test "should support uppercase style" do
    expected = {:ok, "RAPID GREY RATTLESNAKE"}
    assert ExPurpleTiger.animal_hash(@known_text, style: :uppercase) == expected
  end

  test "should support both separator and style" do
    expected = {:ok, "rapid_grey_rattlesnake"}
    assert ExPurpleTiger.animal_hash(@known_text, separator: "_", style: :lowercase) == expected
  end

  test "should generate different hash for other input" do
    assert ExPurpleTiger.animal_hash("other") != ExPurpleTiger.animal_hash(@known_text)
  end
end
