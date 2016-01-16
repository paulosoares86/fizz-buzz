require 'rails_helper'

RSpec.feature "Pages", type: :feature do
  scenario "User enters a empty string" do
    visit "/"
    fill_in "num", with: ''
    click_button "Submit"
    expect(page).to have_text("an invalid number.")
  end

  scenario "Go back link must work" do
    visit "/"
    fill_in "num", with: ''
    click_button "Submit"
    click_link "Back"
    expect(page).to have_text("Enter a number to discover its sound")
  end

  scenario "User enters a string that starts with numbers" do
    visit "/"
    fill_in "num", with: '12asd'
    click_button "Submit"
    expect(page).to have_text("an invalid number.")
  end

  scenario "User enters a string that ends with numbers" do
    visit "/"
    fill_in "num", with: 'asd12'
    click_button "Submit"
    expect(page).to have_text("an invalid number.")
  end

  scenario "User enters a string that does not contains numbers" do
    visit "/"
    fill_in "num", with: 'asd'
    click_button "Submit"
    expect(page).to have_text("an invalid number.")
  end

  scenario "User enters a string that does not contains numbers" do
    visit "/"
    fill_in "num", with: 'asd'
    click_button "Submit"
    expect(page).to have_text("an invalid number.")
  end

  scenario "User enters 0" do
    visit "/"
    fill_in "num", with: '0'
    click_button "Submit"
    expect(page).to have_text("is FizzBuzz")
  end

  scenario "User enters 1" do
    visit "/"
    fill_in "num", with: '1'
    click_button "Submit"
    expect(page).to have_text("is 1")
  end

  scenario "User enters 3" do
    visit "/"
    fill_in "num", with: '3'
    click_button "Submit"
    expect(page).to have_text("is Fizz")
  end

  scenario "User enters 5" do
    visit "/"
    fill_in "num", with: '5'
    click_button "Submit"
    expect(page).to have_text("is Buzz")
  end

  scenario "User enters 15" do
    visit "/"
    fill_in "num", with: '15'
    click_button "Submit"
    expect(page).to have_text("is FizzBuzz")
  end

  scenario "User enters -15" do
    visit "/"
    fill_in "num", with: '-15'
    click_button "Submit"
    expect(page).to have_text("is FizzBuzz")
  end

  scenario "User enters 15.1" do
    visit "/"
    fill_in "num", with: '15.1'
    click_button "Submit"
    expect(page).to have_text("an invalid number")
  end

  scenario "User enters 15,1" do
    visit "/"
    fill_in "num", with: '15,1'
    click_button "Submit"
    expect(page).to have_text("an invalid number")
  end

  scenario "User enters 151234567890098765432345678765432" do
    visit "/"
    fill_in "num", with: '151234567890098765432345678765433'
    click_button "Submit"
    expect(page).to have_text("is Fizz")
  end

end
