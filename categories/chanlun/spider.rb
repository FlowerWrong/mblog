require 'open-uri'
require 'nokogiri'

def fetch_article_list(page = 1)
  url = "http://blog.sina.com.cn/s/articlelist_1215172700_0_#{page}.html"
  doc = Nokogiri::HTML(URI.open(url))
  articles = []
  doc.css('.articleList .articleCell').each do |article|
    article_link = article.css('.atc_main .atc_title a').last
    articles << {
      title: article_link.content.strip,
      link: article_link['href']
    }
  end
  articles
end

def fetch_article_content(url)
  puts "fetch article content #{url}"
  doc = Nokogiri::HTML(URI.open(url))
  article = doc.css('.SG_connBody .artical')
  title = article.css('.articalTitle .titName').first.content.strip
  created_at = article.css('.articalTitle .time').first.content.strip.gsub(/\(|\)/, '')
  category = article.css('.articalTag .blog_class a').last&.content&.strip
  tag = article.css('.articalTag .blog_tag h3').last&.content&.strip

  content = article.css('.articalContent font').map do |e|
              e.content.strip.gsub(/[[:space:]]/, '')
            end.select { |e| !e.empty? }.select { |e| !e.start_with?('浏览“缠中说禅”更多文章请点击进入') }

  {
    title: title,
    link: url,
    created_at: created_at,
    category: category || tag,
    content: content
  }
end

all_article_links = []
1.upto(20).each do |page|
  sleep 0.1
  all_article_links += fetch_article_list(page)
end
articles = []

all_article_links.each do |article_link|
  sleep 0.1
  article = fetch_article_content(article_link[:link])
  articles << article
end

File.open(
  './categories/chanlun/README.md', 'w'
) do |f|
  f.puts('# 缠中说禅博客')
  f.puts

  articles.each do |a|
    f.puts("* [#{a[:title]}](#{a[:link]}) #{a[:created_at]} #{a[:category]}")
  end
end

articles.each do |article|
  File.open(
    "./categories/chanlun/#{article[:title]}~#{article[:created_at].split(' ').join('~')}~#{article[:category]}.md", 'w'
  ) do |f|
    f.puts("# #{article[:title]}")
    f.puts
    f.puts("**#{article[:category]}**")
    f.puts
    article[:content].each do |c|
      f.puts(c)
      f.puts
    end
  end
end
