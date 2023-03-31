require "rails_helper"

describe "The home page" do
  it "can be visited when user is signed out", points: 0 do
    visit "/"
    current_url = page.current_path

    expect(current_url).to eq("/")
  end
end
