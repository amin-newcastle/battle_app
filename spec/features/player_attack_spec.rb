feature 'player attack' do
    scenario 'player 1 attack player 2' do
        sign_in_and_play
        click_button "Attack"
        expect(page).to have_content "You have attacked #{@player_2_name}!"
    end
end