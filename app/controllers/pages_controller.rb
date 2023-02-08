class PagesController < ApplicationController
  def contacts
    render "pages/contacts"
  end

  def privacy_policy
    render "pages/privacy-policy"
  end

  def terms_of_service
    render "pages/terms-of-service"
  end

  def frequently_asked_questions
    render "pages/frequently-asked-questions"
  end
end
