require 'spec_helper'

RSpec.describe "HyphoidV002::App::PlayerSessionsHelper" do
  pending "add some examples to (or delete) #{__FILE__}" do
    let(:helpers){ Class.new }
    before { helpers.extend HyphoidV002::App::PlayerSessionsHelper }
    subject { helpers }

    it "should return nil" do
      expect(subject.foo).to be_nil
    end
  end
end