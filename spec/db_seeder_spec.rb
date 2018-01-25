require "spec_helper"

describe DbSeeder do
	include DbSeeder

  it "has a version number" do
    expect(DbSeeder::VERSION).not_to be nil
  end

  it "Install successfully" do
    expect(DbSeeder::install).to eq(true)
  end
end
