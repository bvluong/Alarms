# == Schema Information
#
# Table name: alarms
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  value      :integer          default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Alarm < ApplicationRecord
  validates :title, presence: true

  def upvote
    self.value += 1
    self.save
  end

  def downvote
    if self.value > 0
      self.value -= 1
      self.save
    end

  end

end
