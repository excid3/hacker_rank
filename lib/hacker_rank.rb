require "hacker_rank/version"
require "httparty"

module HackerRank
  class Client
    include HTTParty
    base_uri "https://www.interviewstreet.com/recruit2/v1"

    def initialize(api_key, default_format="json")
      @api_key = api_key
      @default_format = default_format
    end

    def candidates(test_id, options={})
      options.merge!(
        "X-API-KEY" => @api_key,
        :format => @default_format,
        :test_id => test_id
      )

      self.class.get("/candidate/viewall", query: options).parsed_response
    end

    def candidate(test_id, options={})
      options.merge!(
        "X-API-KEY" => @api_key,
        :format => @default_format,
        :test_id => test_id
      )

      self.class.get("/candidate/view", query: options).parsed_response
    end

    def candidate_by_id(test_id, id, options={})
      candidate test_id, options.merge(id: id)
    end

    def candidate_by_username(test_id, username, options={})
      candidate test_id, options.merge(username: username)
    end

    def create_candidate(test_id, username, options={})
      options.merge!(
        "X-API-KEY" => @api_key,
        :format => @default_format,
        :test_id => test_id,
        :username => username
      )

      self.class.post("/candidate/create", body: options)
    end
  end
end
