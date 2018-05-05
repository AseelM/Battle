feature 'Entering names' do
  scenario 'Sumbitting names' do
    visit('/')
    fill_in 'player1', with: 'Bar'
    fill_in 'player2', with: 'Ken'
    click_button 'SET IT OFF!'
    expect(page).to have_content('Bar vs. Ken')
  end
end
