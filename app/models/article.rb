class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy

  def html
    renderer = Redcarpet::Render::HTML.new(render_options = {})
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(self.content).html_safe
  end
end
