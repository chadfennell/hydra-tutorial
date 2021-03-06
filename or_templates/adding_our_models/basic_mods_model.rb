class Record < ActiveFedora::Base

  has_metadata :name => "descMetadata", :type => ModsDescMetadata

  delegate :title, :to=>'descMetadata', :at => [:mods, :titleInfo, :title], :unique=>true
  delegate :abstract, :to => "descMetadata"
  delegate :preferred_citation, :to => "descMetadata", :unique=>true
  delegate :author, :to=>'descMetadata', :at => [:name, :namePart], :unique=>true
  delegate :url, :to=>'descMetadata', :at => [:relatedItem, :location, :url], :unique=>true
  delegate :description, :to=>'descMetadata', :at => [:abstract], :unique=>true

end

