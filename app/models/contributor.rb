class Contributor < ApplicationRecord
  searchkick word_start: [:name], inheritance: true
end
