feature 'Veiw hit points' do
    scenario 'see Player 2 hit points' do
        sign_in_and_play
        expect(page).to have_content "#{@player_2_name}: 100HP"
    end
end