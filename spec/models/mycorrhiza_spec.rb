require 'spec_helper'

RSpec.describe Mycorrhiza do
  context "-- on creation of any one mycelium" do
    it "-- should occupy a location" do

    end
    it "-- should not be able to occupy more than one location" do

    end
    it "-- should be able to view its neighbours withing the surrounding 3x3 grid area" do
      # expect an array returning possible trees and other mycorrhiza in surrounding area
    end
  end

  context "-- on discovering a neighbour" do
    context "-- neighbouring mycorrhiza" do
      it "-- should be able to determine the total number of neighbours" do

      end
      it "-- should be able to select a specific neighbour and make a request to exchange resources" do

      end
      context "-- neighbour is self" do

      end
      context "-- neighbour is other" do

      end
    end
    context "-- neighbouring tree" do
      it "-- should increment the player's 'linked trees' count" do

      end
      it "-- should be able to exchange resources with the neighbouring tree"
    end
  end

  context "-- creation of child" do
    it "-- should know who its children are" do

    end
    it "-- should know who its mother is" do

    end
    it "-- should know the location of its child/mother on the grid" do

    end
    it "-- should be able to trace its lineage back to the original mycorrhiza" do

    end
  end

  context "-- building hypha" do
    it "-- should be able to create hypha" do

    end
    it "-- should cost proteins to build a hypha" do

    end
    it "-- should be steadily incrementing its available resources relative to the number of hypha it controls" do

    end
  end
end
