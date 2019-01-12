class UserController < ApplicationController

  def media
    @media = Rails.cache.fetch("media_#{current_user.id}", expires_in: 1.day) do 
      current_user.user_media
    end
  end
end
