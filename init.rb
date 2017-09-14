Redmine::Plugin.register :redmine_project_news do
  name 'Redmine Project News plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end



Rails.application.config.to_prepare do

  class RedmineProjectNewsHooks < Redmine::Hook::ViewListener
    render_on :view_projects_show_right, :partial=> 'projects/show_news'
  end
end