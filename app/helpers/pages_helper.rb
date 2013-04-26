module PagesHelper

  def active_page? (params)
    'active' if request.path.include? params
  end

end
