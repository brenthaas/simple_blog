require 'rails_helper'

describe Post do
  let(:user) { FactoryGirl.create(:user) }
  let(:basic_params) { { title: "1st Post", content: "Foo bar", user: user } }

  subject { described_class.new(basic_params) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:content) }

  describe "#posted_at" do
    context "when not specified", :uses_time do

      it "defaults to the current time" do
        travel_to(Time.zone.now) {
          expect(described_class.new(basic_params).posted_at).to eq Time.current
        }
      end
    end
  end
end
