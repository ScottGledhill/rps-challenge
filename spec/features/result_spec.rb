
require 'capybara/rspec'

feature 'winner' do

  scenario 'paper will beat rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in
    click_button "paper"
    expect(page).to have_content 'winner Scott'
  end

  scenario 'scissors will beat paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in
    click_button "scissors"
    expect(page).to have_content 'winner Scott'
  end

  scenario 'rock will beat scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in
    click_button "rock"
    expect(page).to have_content 'winner Scot'
  end

  scenario 'rock will draw with rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in
    click_button "rock"
    expect(page).to have_content 'NO_WINNER'
  end

  scenario 'rock will lose to spock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
    sign_in
    click_button "rock"
    expect(page).to have_content 'Computer'
  end
end
