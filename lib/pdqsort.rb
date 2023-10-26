# frozen_string_literal: true

require_relative "pdqsort/version"
require_relative "pdqsort/pdqsort"

class Array
  def pdqsort
    Pdqsort.sort(self).to_a
  end
end
