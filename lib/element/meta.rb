module CapybaraPageObject
  class Meta < CapybaraPageObject::Page
    def key
      source.find('meta')[:name]
    end
    
    def value
      source.find('meta')[:content]
    end
  end
end
