defmodule Scrape.Parser do

  def get_fake_reviews(html) do
    all_reviews = Floki.find(html, ".review-entry")

    all_reviews
    |> filter_by_stars
    |> filter_by_username

  end

  def get_reviews(html) do
    Floki.find(html, ".review-entry")
  end

  def filter_by_stars(reviews) when is_list(reviews) do
    Enum.filter(reviews, fn review -> 
      Floki.find(review, ".dealership-rating")
      |> Floki.find(".rating-50")
      |> has_five_stars()
    end)
  end


  def has_five_stars([]), do: false
  def has_five_stars(content), do: true 

  def filter_by_username(reviews) when is_list(reviews) do
    Enum.filter(reviews, fn review -> 
      
      Floki.find(review, ".margin-bottom-sm, .line-height-150")
      |> Floki.find("span")
      |> Floki.text()
      |> check_username
    end)
  end

  def check_username(name) when is_binary(name) do
    name
    |> String.replace(~r/[^\d]/, "")
    |> check_digits()
  end

  def check_digits(""), do: false
  def check_digits(numbers), do: true
end