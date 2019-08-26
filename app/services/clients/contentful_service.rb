module Clients
  class ContentfulService < ApplicationService
    def initialize(space_id, access_token)
      @space_id = space_id
      @access_token = access_token
    end

    def call
      fetch_entry
    end

    private

    def fetch_entry
      client = Contentful::Client.new(
        space: @space_id,
        access_token: @access_token,
        dynamic_entries: :auto
      )
      client.entries(content_type: 'recipe').entries
    rescue => e
      # Firstly I prefer to have Error Class with rescue, but am yet to know what error module defined for the API.
      # I dont want to suppress error really.
      # It is best I put a log monitor here like bugsnag, watchdog etc rather than log this and suck on server's memory.
      errors.add :api_error, e.message
    end
  end
end