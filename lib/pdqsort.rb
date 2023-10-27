# frozen_string_literal: true

require_relative "pdqsort/version"
require_relative "pdqsort/pdqsort"

class Array
  def pdqsort
    UnstableSort.pdqsort(self)
  end
end
