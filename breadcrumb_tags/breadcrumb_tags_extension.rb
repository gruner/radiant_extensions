class BreadcrumbTagsExtension < Radiant::Extension
  version "0.2"
  description "Provides a simple monkey patch of the default breadcrumbs tag to override the default formatting."
  url "http://github.com/divineflame/radiant_extensions/tree/"
  
  def activate
    Page.send :include, BreadcrumbTags
  end
end
