class HomeController < ApplicationController
  def index
    @logged_in = logged_in?
    if logged_in?
      logger.error 'here'
      client = Foursquare2::Client.new(:oauth_token => session[:token], :ssl => {:ca_path => "/etc/ssl/certs"})
      venue = client.venue(312090) # Vincenzo's venue id
      if venue[:beenHere]
        @visit_count = venue[:beenHere][:count]
        @sandwich_cost = @visit_count * 5.25
      else
        @logged_in = false
      end
    end
  end
end
