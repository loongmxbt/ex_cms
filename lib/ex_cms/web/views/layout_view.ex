defmodule ExCMS.Web.LayoutView do
  use ExCMS.Web, :view

  def page_title(assigns) do
  	site_name = Application.get_env :ex_cms, :site_name
  	page_name = nil
  	"#{site_name} - #{page_name}"
  end
end
