defmodule UsernameTest do
  use ExUnit.Case
  alias Scrape.HtmlParser.Username
  alias Factories.ReviewFactory

  test "it returns an added point to fakeness if the username has numbers" do
    review = ReviewFactory.one_review_with_numbers()

    assert Username.get_username_point(%{fakeness: 0, review: review}) == %{fakeness: 1, review: review}
  end

  test "it does not add a point to fakeness if the username does not have numbers" do
    review = ReviewFactory.one_review_no_numbers()

    assert Username.get_username_point(%{fakeness: 0, review: review}) == %{fakeness: 0, review: review}
  end

end