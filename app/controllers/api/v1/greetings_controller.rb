class Api::V1::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.all.order('random()').first
    render json: { greeting: @greeting.message }
  end
end
