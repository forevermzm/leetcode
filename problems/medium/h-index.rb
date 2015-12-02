# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
  if ! citations or citations.size == 0
    return 0
  end
  sorted_citations = citations.sort
  result = citations.size
  while result > 0
    if sorted_citations[ citations.size - result ] >= result
      break
    else
      result -= 1
    end
  end
  result
end
