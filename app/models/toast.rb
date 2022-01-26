class Toast
  attr_reader :type, :message

  def initialize(type:, message:)
    @type = type
    @message = message
  end

  def to_partial_path
    "toasts/#{type || 'toast'}"
  end
end
