class MediumController < ApplicationController
  before_action :set_medium, only: [:buy, :delete, :show]

  def index
  end

  def show
  end

  def movies
    @media = Rails.cache.fetch("movies", expires_in: 1.day) do 
      Medium.movie
    end
  end

  def tv_shows
    @media = Rails.cache.fetch("tv_shows", expires_in: 1.day) do 
      Medium.tv_show
    end
  end

  def buy
    current_user.buy(@medium)
    redirect_to request.referrer
  end

  def delete
    current_user.delete(@medium)
    redirect_to request.referrer
  end

  private
  def set_medium
    @medium = Medium.find_by(id: params[:id])
  end
end
