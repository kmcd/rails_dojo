module LanderHelper
  def redcloth(text)
    raw RedCloth.new(text).to_html
  end
end
