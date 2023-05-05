class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def rules
  end

  def print
  end

  def raceinfo
  end

  def founders
    @founder = Founder.first
  end

  def shots
  end

end
