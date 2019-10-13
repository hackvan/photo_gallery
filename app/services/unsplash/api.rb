module Unsplash::API
  require 'httparty'
  BASE_URI   = 'https://api.unsplash.com/'.freeze
  ACCESS_KEY = Rails.application.credentials.unsplash[:access_key].freeze
  SECRET_KEY = Rails.application.credentials.unsplash[:secret_key].freeze
  DEFAULT_VERSION = 'v1'.freeze

  class HTTPError < HTTParty::Error
  end

  def self.get_photos
    uri = "#{BASE_URI}/photos"
    photos = get_request(uri)
  end

  def self.get_random_photos(q = {})
    uri = "#{BASE_URI}/photos/random"
    query_params = { count: 12 }.merge(q)
    photos = get_request(uri, query_params)
  end

  def self.get_search_photos(q = {})
    uri = "#{BASE_URI}/search/photos"
    query_params = { query: 'minimal', page: '1', per_page: '12' }.merge(q)
    photos = get_request(uri, query_params)
  end

  def self.get_photo(id)
    uri = "#{BASE_URI}/photos/#{id}"
    photo = get_request(uri).first
  end

  def self.get_favorites_photos
    photos = []
    Favorite.recent.each do |fav|
      photos << get_photo(fav.photo_id)
    end
    photos
  end

  private
    def self.public_auth_headers
      { 
        'Authorization':  "Client-ID #{ACCESS_KEY}",
        'Accept-Version': DEFAULT_VERSION
      }
    end

    def self.get_request(uri, query_params = {})
      response = HTTParty.get(uri, headers: public_auth_headers, query: query_params)

      raise HTTPError, response.parsed_response unless response.success?

      parsed_response = JSON.parse(response.body, symbolize_names: true)
      parsed_response = parsed_response.dig(:results) if parsed_response.kind_of?(Hash) && parsed_response.has_key?(:results)
      objects = []
      if parsed_response.kind_of?(Array)
        parsed_response.each do |object|
          photo = Photo.new(
            id: object.dig(:id),
            description: object.dig(:description) || object.dig(:alt_description) || 'No description provided.',
            image_url:   object.dig(:urls, :regular),
            thumb_url:   object.dig(:urls, :small),
            source_url:  object.dig(:links, :html),
            user_id:     object.dig(:user, :id),
            user_name:   object.dig(:user, :name),
            user_url:    object.dig(:user, :links, :html)
          )
          objects << photo
        end
      else
        photo = Photo.new(
          id: parsed_response.dig(:id),
          description: parsed_response.dig(:description) || parsed_response.dig(:alt_description) || 'No description provided.',
          image_url:   parsed_response.dig(:urls, :regular),
          thumb_url:   parsed_response.dig(:urls, :thumb),
          source_url:  parsed_response.dig(:links, :html),
          user_id:     parsed_response.dig(:user, :id),
          user_name:   parsed_response.dig(:user, :name),
          user_url:    parsed_response.dig(:user, :links, :html)
        )
        objects << photo
      end
      objects
    end
end