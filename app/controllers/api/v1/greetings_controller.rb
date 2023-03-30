class Api::V1::GreetingsController < ApplicationController
  def index
    if Greeting.count.zero?
      render json: { greeting: 'THERE ARE NOT GREETINGS ON THE API. PLEASE ADD THEM FROM BACKEND' }
    else
      @greeting = Greeting.all.order('random()').first
      render json: { greeting: @greeting.message }
    end
  end
end
