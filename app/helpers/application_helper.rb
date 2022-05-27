module ApplicationHelper
  FLASH_CSS_CLASSES = {
    notice: "bg-slate-600",
    error: "bg-red-500"
  }.with_indifferent_access.freeze

  def flash_css_class(key)
    "flash-animation p-4 rounded text-white #{FLASH_CSS_CLASSES[key]}"
  end
end
