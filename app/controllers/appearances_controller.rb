class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    @guest = Guest.find_or_create_by(name: params[:guest_name], occupation: params[:guest_occupation])
    @episode = Episode.find_or_create_by(number: params[:episode_number], date: params[:episode_date])
    @appearance = Appearance.create(guest_id: @guest.id, episode_id: @episode.id, rating: params[:rating])
    redirect_to appearance_path(@appearance)
  end

  def show
    @appearance = Appearance.find(params[:id])
  end
end
