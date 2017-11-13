require 'spec_helper'

describe "navbar functionality tests" do

  before(:all) do
    @navtest = NavBar.new
  end

  it "should be able to access all links in the navigation bar" do
    @navtest.start
    @navtest.visit_women
    @navtest.visit_dresses
    @navtest.visit_tshirts
    @navtest.visit_blouses
    @navtest.visit_tops
    @navtest.visit_casual_dresses
    @navtest.visit_evening_dresses
    @navtest.visit_summer_dresses
  end

end
