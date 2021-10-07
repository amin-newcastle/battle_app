def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Khalid'
    fill_in :player_2_name, with: 'Amin'
    click_button 'Submit'
end     