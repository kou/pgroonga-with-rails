class Document < ActiveRecord::Base
  scope :full_text_search, -> (query) {
    where("content @@ ?", query)
  }
end
