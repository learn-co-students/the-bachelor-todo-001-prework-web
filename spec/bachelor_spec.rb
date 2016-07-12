describe "bachelor" do

  let(:data) { JSON.parse(File.read('spec/fixtures/contestants.json')) }

  describe "#get_first_name_of_season_winner" do
    it "returns 'Tessa' when passed the data and 'season 10'" do
      expect(get_first_name_of_season_winner(data, "season 10")).to eq("Tessa")
    end

    it "returns 'Courtney' when passed the data and 'season 16'" do
      expect(get_first_name_of_season_winner(data, "season 16")).to eq("Courtney")
    end

    it "returns 'Emily' when passed the data and 'season 15'" do
      expect(get_first_name_of_season_winner(data, "season 15")).to eq("Emily")
    end
  end

  describe "#get_contestant_name" do
    it "returns 'Carly Waddel' when passed data and the string 'Cruise Ship Singer'" do
      expect(get_contestant_name(data, "Cruise Ship Singer")).to eq("Carly Waddell")
    end

    it "returns 'Brooke Burchette' when passed data and the string 'Community Organizer'" do
      expect(get_contestant_name(data, "Community Organizer")).to eq("Brooke Burchette")
    end

    it "returns 'Dianna Martinez' when passed data and the string 'Nonprofit director'" do
      expect(get_contestant_name(data, "Nonprofit director")).to eq("Dianna Martinez")
    end
  end

  describe "#count_contestants_by_hometown" do
    it "returns 2 when passed data and the string 'New York, New York'" do
      expect(count_contestants_by_hometown(data, "New York, New York")).to eq(4)
    end

    it "returns 6 when passed data and the string 'Chicago, Illinois'" do
      expect(count_contestants_by_hometown(data, "Chicago, Illinois")).to eq(8)
    end

    it "returns 6 when passed data and the string 'San Diego, CA'" do
      expect(count_contestants_by_hometown(data, "San Diego, California")).to eq(5)
    end
  end

  describe "#get_occupation" do
    it "returns 'Journalist' when passed data and the string 'Cranston, Rhode Island'" do
      expect(get_occupation(data, "Cranston, Rhode Island")).to eq("Journalist")
    end

    it "returns 'Critical care nurse' when passed data and the string 'Waverly, Nebraska'" do
      expect(get_occupation(data, "Waverly, Nebraska")).to eq("Critical care nurse")
    end

    it "returns 'Health Club Manager' when passed data and the string 'Troutdale, Oregon'" do
      expect(get_occupation(data, "Troutdale, Oregon")).to eq("Health Club Manager")
    end
  end

  describe "#get_average_age_for_season" do
    it "returns 26 when passed the data and the string 'season 10'" do
      expect(get_average_age_for_season(data, "season 10")).to eq(25)
    end
    it "returns 27 when passed the data and the string 'season 11'" do
      expect(get_average_age_for_season(data, "season 11")).to eq(27)
    end
    it "returns 26 when passed the data and the string 'season 12'" do
      expect(get_average_age_for_season(data, "season 12")).to eq(26)
    end
  end

end
