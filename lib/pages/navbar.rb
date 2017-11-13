require 'capybara/dsl'

class NavBar

    include Capybara::DSL

    HOMEPAGE_URL = 'http://automationpractice.com/index.php'
    WOMEN_PAGE_URL = 'http://automationpractice.com/index.php?id_category=3&controller=category'
    TOPS_PAGE_URL = 'http://automationpractice.com/index.php?id_category=4&controller=category'
    TSHIRTS_PAGE_URL = 'http://automationpractice.com/index.php?id_category=5&controller=category'
    BLOUSES_PAGE_URL = 'http://automationpractice.com/index.php?id_category=7&controller=category'
    DRESSES_PAGE_URL = 'http://automationpractice.com/index.php?id_category=8&controller=category'
    CASUAL_DRESSES_PAGE_URL = 'http://automationpractice.com/index.php?id_category=9&controller=category'
    EVENING_DRESSES_PAGE_URL = 'http://automationpractice.com/index.php?id_category=10&controller=category'
    SUMMER_DRESSES_PAGE_URL = 'http://automationpractice.com/index.php?id_category=11&controller=category'

    def category
      find(".category-name").text
    end

    def start
      visit(HOMEPAGE_URL)
    end

    def visit_women
      visit(WOMEN_PAGE_URL)
    end

    def visit_dresses
      visit(DRESSES_PAGE_URL)
    end

    def visit_tshirts
      visit(TSHIRTS_PAGE_URL)
    end

    def visit_blouses
      visit(BLOUSES_PAGE_URL)
    end

    def visit_tops
      visit(TOPS_PAGE_URL)
    end

    def visit_casual_dresses
      visit(CASUAL_DRESSES_PAGE_URL)
    end

    def visit_evening_dresses
      visit(EVENING_DRESSES_PAGE_URL)
    end

    def visit_summer_dresses
      visit(SUMMER_DRESSES_PAGE_URL)
    end

end
