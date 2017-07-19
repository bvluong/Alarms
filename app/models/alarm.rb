class Alarm < ApplicationRecord
  validates :title, presence: true
end
