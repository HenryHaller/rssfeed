xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "My Company Blog"
    xml.description "This is a blog by My Company"

    @items.each do |item|
      xml.item do
        xml.title item.title
        xml.pubDate item.created_at.to_s(:rfc822)
        xml.enclosure url: item.url
      end
    end
  end
end
