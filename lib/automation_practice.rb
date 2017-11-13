require_relative 'pages/homepage'
require_relative 'pages/sign_in/create_account'
require_relative 'pages/sign_in/forgotten_password'
require_relative 'pages/sign_in/login'
require_relative 'pages/navbar'
require_relative 'pages/myaccountpage'
require_relative 'pages/mywishlistpage'
require_relative 'pages/cart'
require_relative 'pages/productpage'
require_relative 'pages/addressespage'
require_relative 'pages/addnewaddresspage'
require_relative 'pages/cart'
require_relative 'pages/contact_form'
require_relative 'pages/checkout/checkout'

class AutomationPracticeSite

    def homepage
       Homepage.new
    end

    def contactpage
      Contact.new
    end

    def forgotpassword
        ForgotPassword.new
    end

    def login
        Login.new
    end

    def checkout
      Checkout.new
    end

    def myaccountpage
      MyAccountPage.new
    end

    def mywishlistpage
      MyWishListPage.new
    end

    def productpage
      ProductPage.new
    end

    def addressespage
      AddressesPage.new
    end

    def addnewaddresspage
      AddNewAddressPage.new
    end

    def createaccount
      CreateAccount.new
    end
    
    def cart
      Cart.new
    end
end
