class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
	@title = "Contact"
  end
  
  def signin
	@title = "Sign In"
  end
  
  def signup
	@title = "Sign Up"
  end
  
end
