class HomesController < ApplicationController
  
  def index
    @events = Event.all(:limit => 5)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: :no-content }
    end
  end

end
