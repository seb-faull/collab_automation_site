require 'spec_helper'

describe 'create wishlist' do

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

  it 'should create a new wishlist' do
    listname = 'My Wishlist'
    @site.mywishlistpage.visit_wishlist_page
    @site.mywishlistpage.input_wishlist_name(listname)
    @site.mywishlistpage.click_submit_button
    @site.mywishlistpage.click_my_wishlist(listname)
  end

end
