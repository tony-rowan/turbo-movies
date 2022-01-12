require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  test "viewing movies index" do
    visit movies_path

    assert_text "Select a movie"
  end

  test "selecting movies" do
    visit movies_path
    click_on "Lord of the Rings: The Return of the King"

    assert_text "Peter Jackson"

    click_on "Star Wars: Episode V - The Empire Strikes Back"

    assert_text "Irvin Kershner"
  end

  test "rating movies" do
    visit movies_path
    click_on "Lord of the Rings: The Return of the King"
    click_on "Rate 5 Stars"

    assert_text "Rating Added!"

    click_on "Star Wars: Episode V - The Empire Strikes Back"

    assert_no_text "Rating Added!"
  end
end
