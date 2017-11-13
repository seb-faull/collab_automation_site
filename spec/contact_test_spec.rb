 require 'spec_helper'




describe 'Contact Automation Test' do

  before(:all) do
    @automation_practice_site = AutomationPracticeSite.new
    @contact = Contact.new
  end

  it 'should go to the contact page' do
    @automation_practice_site.contactpage.visit_contact_page
  end

  it 'should write a message' do
    @contact.message_write
    sleep(2)
  end

  it 'should fill in the email field' do
    @contact.email_write
    sleep(2)
  end

  it 'should fill in the order reference number field' do
    @contact.order_reference_write
  end

  it 'should display an error message with an invalid message' do
    @contact.send_message
    @contact.error_message
  end

  it 'Should send a acceptable message' do
    @contact.order_reference_write
    @contact.message_write
    @contact.choose_subject
    @contact.send_message
    sleep(3)
  end

  it 'should show a confirmation message' do
    @contact.confirmation
  end

  it 'should go back to home when home button pressed' do
    @contact.go_home
    expect(@contact.current_url).to eq('http://automationpractice.com/index.php')
  end

end
