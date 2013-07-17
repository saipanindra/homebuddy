require 'spec_helper'

describe StaticPagesController do

  describe "GET 'wip'" do
    it "returns http success" do
      get 'wip'
      response.should be_success
    end
  end

end
