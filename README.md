# HackerRank Gem

A Ruby interface to the [HackerRank / InterviewStreet API](http://apidocs.interviewstreet.org/).

## Installation

Add this line to your application's Gemfile:

    gem 'hacker_rank'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hacker_rank

## Usage

Currently, you can interact with candidates over the API:

```ruby
HACKER_RANK_API_KEY = "YOUR_API_KEY"
client = HackerRank::Client.new HACKER_RANK_API_KEY

# Retrieve all the candidates for a test where 123 is the test_id
client.candidates(123)

# Retrieve a candidate from a test where 123 is the test_id
client.candidate(123, username: "chris@excid3.com")

# Retrieve a candidate by id from a test where 123 is the test_id
client.candidate_by_id(123, id: 456)

# Retrieve a candidate by username from a test where 123 is the test_id
client.candidate_by_username(123, "chris@excid3.com")

# Create a candidate for test where 123 is the test_id
client.create_candidate(123, "chris@excid3.com")
```

## Contributing

1. Fork it ( https://github.com/excid3/hacker_rank/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
