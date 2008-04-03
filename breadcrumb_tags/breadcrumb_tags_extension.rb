class BreadcrumbTagsExtension < Radiant::Extension
  version "0.1"
  description "Provides simple monkey patch of default breadcrumbs tag for custom formatting."
  url "http://seansantry.com/svn/radiant/extensions/enkodertags/trunk/"
  
  def activate
    Page.send :include, BreadcrumbTags
  end
end
