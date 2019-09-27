defmodule Mix.Tasks.FindFakers do
  use Mix.Task

  @shortdoc "Scrapes DealerRater and returns top three possibly fake reviews"
  def run([pages]) do
    HTTPoison.start()
    get_page_data(String.to_integer(pages))
    |> Scrape.Parser.get_reviews()
    |> format_for_readability()
    |> IO.inspect()
  end

  def get_page_data(pages) do
    Enum.reduce(pages..1, "", fn page_number, acc -> 
      {:ok, page} = Scrape.HttpGetter.get("https://www.dealerrater.com/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page#{page_number}/?filter=ALL_REVIEWS#link")
      acc <> "\r" <> page
    end)
  end

  def format_for_readability(top_reviews) do
    Enum.reduce(top_reviews, [], fn review, acc -> 
      formatted_review = 
      %{
        user: get_username(review),
        rating: get_rating(review),
        body: get_body(review)
      }

      acc ++ [formatted_review]
    end)
  end

  defp get_username(review) do
    Floki.find(review, ".margin-bottom-sm, .line-height-150")
    |> Floki.find("span")
    |> Floki.text()
  end

  defp get_rating(review) do
    hd(Floki.find(review, ".dealership-rating"))
    |> Floki.attribute("div", "class")
    |> to_string()
    |> String.split("col-xs-6 col-sm-12 pad-none dealership-ratingrating-static visible-xs pad-none margin-none ")
    |> get_number_rating()
  end

  defp get_number_rating([_head, tail]) do
    String.slice(tail, 7, 2)
  end

  defp get_body(review) do
    Floki.find(review, ".margin-bottom-sm, .line-height-150")
    |> Floki.find("h3")
    |> Floki.text()
  end
end