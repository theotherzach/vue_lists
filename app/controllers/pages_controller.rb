class PagesController < ApplicationController

  def home
    @robots = Robot.limit(200)
  end

end
