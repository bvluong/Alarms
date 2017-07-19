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

require 'rails_helper'

RSpec.describe Alarm, type: :model do
  describe "create new Alarm" do
    it "successfully" do
      Alarm.create!(title: "Beeping")
      alarm = Alarm.find_by_title("Beeping")
      expect(alarm.title).to eq("Beeping")
    end

    it "expects default value to be 0" do
      Alarm.create!(title: "Ambient Noise")
      alarm = Alarm.find_by_title("Ambient Noise")
      expect(alarm.value).to eq(0)
    end
end

  describe "Upvote Alarm" do
    it "should increase value" do
      Alarm.create!(title: "Beeping")
      alarm = Alarm.find_by_title("Beeping")
      alarm.upvote
      expect(alarm.value).to eq(1)
    end
  end

  describe "Downvote Alarm" do
    it "should not decrease below 0" do
      Alarm.create!(title: "Noise")
      alarm = Alarm.find_by_title("Noise")
      alarm.downvote
      expect(alarm.value).to eq(0)
    end

    it "should decrease value" do
      Alarm.create!(title: "Ocean Waves")
      alarm = Alarm.find_by_title("Ocean Waves")
      5.times { alarm.upvote }
      alarm.downvote
      expect(alarm.value).to eq(4)
    end
  end


it { should validate_presence_of(:title) }

end
