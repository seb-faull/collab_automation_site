require 'spec_helper'

describe 'delete wishlist' do

  before(:all) do
    @site = AutomationPracticeSite.new
  end

  it 'should sign in' do
    @site.login.visit_sign_in_page
    @site.login.input_user_email("test@spartaglobal.co")
    @site.login.input_user_password("password")
    @site.login.click_sign_in_submit_button
  end

  it 'should go to my wishlist' do
    @site.myaccountpage.click_wishlist_button
  end

  it 'should delete the wishlist' do
    @site.mywishlistpage.delete_wishlist
  end

end
