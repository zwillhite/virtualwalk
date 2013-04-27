module Api
  module V1
    class EventsController < ApplicationController     
      before_filter :restrict_access
      
      respond_to :json
      
      def index
        respond_with Event.all
      end
 
      def show
        eventID = params[:eventid]
        if eventID != nil
          respond_with Event.where('id = ?', eventID).first
        end  
      end
      
      def teams
        eventID = params[:eventid]
        if eventID != nil
          @event = Event.where('id = ?', eventID).first
          respond_with @event.teams
        end  
      end
      
      private
      
      def restrict_access
        @user = User.find_by_single_access_token(params[:token])
        head :unauthorized unless @user 
      end
      
      #Restricts Access Based on the Token value from the HTTP Header
      #def restrict_access
      #  authenticate_or_request_with_http_token do |token, options|
      #    User.exists?(single_access_token: token)
      #  end
      #end
            
    end
  end
end
