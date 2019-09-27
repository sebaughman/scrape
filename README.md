# Find the Fakers
Mix task to find the top three possibly fake reviews in the specified number of pages on DealerRater.com for the dealership: McKaig Chevrolet Buick - A Dealer For The People

## Faker Criteria
- Rated 5 stars
- Has number in username
- Has left more than 1 review in specified number of pages

## How to find fakers
- `mix deps.get`
- `mix find_fakers #{number of pages you want to scrape}`

## How to run tests
- `mix test`
