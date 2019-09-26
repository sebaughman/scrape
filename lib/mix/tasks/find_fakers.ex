defmodule Mix.Tasks.FindFakers do
  use Mix.Task

  @shortdoc "Scrapes DealerRater and returns top three possibly fake reviews"
  def run(_) do
    HTTPoison.start()
    get_page_data(5)
    |> Scrape.Parser.get_reviews()
  end

  def get_page_data(pages) do
    Enum.reduce(pages..1, "", fn page_number, acc -> 
      {:ok, page} = Scrape.HttpGetter.get("https://www.dealerrater.com/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page#{page_number}/?filter=ALL_REVIEWS#link")
      acc <> "\r" <> page
    end)
  end
end