class HomeController < ApplicationController
  def index
    @artist = DiscogsApi.fetch_artist
  end
end
