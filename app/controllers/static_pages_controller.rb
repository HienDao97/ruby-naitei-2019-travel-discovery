class StaticPagesController < ApplicationController
  def home
    @travel_places = TravelPlace.popular_places
    @posts = Post.popular_posts
    @travel_place_types = TypeTravelPlace.all

    @hotels = TravelPlace.where("type_travel_place_id = 1")
    @travels = TravelPlace.where("type_travel_place_id = 2")
    @foods = TravelPlace.where("type_travel_place_id = 3")
  end
end
