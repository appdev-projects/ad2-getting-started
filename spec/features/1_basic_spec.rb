require "rails_helper"

describe "The /movies page" do
  it "can be visited", points: 1 do
    visit "/movies"
    
    expect(page.status_code).to be(200),
      "Expected to visit /movies successfully, but didn't find it."
  end
end
