require 'player'

describe Player do
    let(:player_1_name) {"Amin"}
    let(:my_player) { described_class.new(player_1_name) }

    it "Should return player name" do
        expect(my_player.name).to eq(player_1_name)
    end

    it "Should be able to damage hit points" do
        expect { my_player.take_damage }.to change{my_player.health}.by -10 
    end
end