defmodule Scrape.HttpGetter do

  def get(url) do
    with {:ok, response} <- HTTPoison.get(url) do
     {:ok, response.body}
    end
  end
  
end
