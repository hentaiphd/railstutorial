require 'spec_helper'

$title = "Rap Game Title"

describe "StaticPages" do
    describe "title let method" do
        let(:title) { expect(page).to have_title($title) }

        it "should have correct title" do
            visit '/static_pages/home'
            title.should
        end
        it "should have correct title" do
            visit '/static_pages/about'
            title.should
        end
        it "should have correct title" do
            visit '/static_pages/contact'
            title.should
        end
        it "should have correct title" do
            visit '/static_pages/help'
            title.should
        end
    end 
    describe "Home page" do
        it "should have the content 'Sample App'" do
            visit '/static_pages/home'
            expect(page).to have_content('Sample App')
        end
    end
    describe "Help page" do

        it "should have the content 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end
    end
    describe "About page" do
        it "should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')
        end
    end
    describe "Contact page" do
        it "should have the content 'Contact'" do
            visit '/static_pages/contact'
            expect(page).to have_content('Contact')
        end
    end
end

