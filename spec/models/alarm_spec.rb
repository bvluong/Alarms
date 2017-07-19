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
      alarm2 = Alarm.find_by_title("Ambient Noise")
      expect(alarm2.value).to eq(0)
    end

end

it { should validate_presence_of(:title) }

end
