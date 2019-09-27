defmodule RepeatUsersTest do
  use ExUnit.Case
  alias Scrape.HtmlParser.RepeatUsers
  alias Factories.ReviewFactory

  test "it returns an added point to fakeness if the user has 2 or more reviews" do
    review = ReviewFactory.one_review_from_awhite()
    reviews = ReviewFactory.ten_reviews()

    result = RepeatUsers.get_repeat_point(%{fakeness: 0, review: review}, reviews)

    assert result.fakeness == 1
  end

  test "it does not add a point to fakeness if the user has less than 2 reviews" do
    review = ReviewFactory.one_review_from_foony()
    reviews = ReviewFactory.ten_reviews()

    result = RepeatUsers.get_repeat_point(%{fakeness: 0, review: review}, reviews)

    assert result.fakeness == 0
  end

end