class ComfortableMexicanSofa::Tag::PageRichText
  include ComfortableMexicanSofa::Tag
  
  def self.regex_tag_signature(identifier = nil)
    identifier ||= /[\w\-]+/
    /\{\{\s*cms:page:(#{identifier}):rich_text\s*\}\}/
  end
  
  def content
    block.content
  end
  
end