require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'Goat Cheese'
    fill_in 'Cost', :with => 5
    fill_in 'Country of origin', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Goat Cheese'
  end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end

  it "gives an error when no cost is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Cost can't be blank"
  end

  it "gives an error when no country is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Country of origin can't be blank"
  end

end

