class GamesController < ApplicationController

  def new
    @game = Game.new
    @track = find_next_race_track
    @tracks = Track.all
    @tracks_name = [@track.name]
    @tracks.each do |track|
      @tracks_name << track.name
    end
  end

  def create
  end

  private

  # Method to find next race on tha calendar -- Not yet working
  def find_next_race_track
    today = Date.today
    tracks = Track.all
    next_race = tracks.find { |track| track.this_years_date >= today }
    return next_race
  end
end
