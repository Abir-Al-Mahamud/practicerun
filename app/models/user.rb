class User < ApplicationRecord
    # Remove :confirmable from the devise modules
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    # Other code...
  end