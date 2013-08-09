class SessionsController < ApplicationController
  @@global_counter = 1

  def new
    @this_response = @@global_counter

    #increment or loop over
    if Event.count == @@global_counter
      @@global_counter = 1
    else
      @@global_counter += 1
    end

    @event = Event.find(@this_response)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event, status: @event.response}
    end



  end
end
