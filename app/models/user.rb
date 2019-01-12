# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_media
  has_many :media, through: :user_media
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  def buy(medium)
    um = UserMedium.find_or_create_by(user_id: self.id, medium_id: medium.id)
    if um.expired?
      um.touch
    end
  end

  def bought?(medium)
    um = UserMedium.find_by(user_id: self.id, medium_id: medium.id)
    um.present? and !um.expired?
  end

  def delete(medium)
    um = UserMedium.find_by(user_id: self.id, medium_id: medium.id)
    um.destroy if um.present?
  end
end
