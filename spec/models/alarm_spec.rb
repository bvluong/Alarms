require 'rails_helper'

RSpec.describe Alarm, type: :model do
  describe "create new Alarm" do
    it "successfully" do
      Alarm.create!(title: "Beeping")
      alarm = Alarm.find_by_title("Beeping")
      expect(alarm.title).to eq("Beeping")
    end
    
end

it { should validate_presence_of(:title) }

end
