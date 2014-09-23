require "#{File.dirname(__FILE__)}/../rblib/tymac_text_diceware"

if(111!=0)
  ## init vars
  icc    =   30
  igg    =   3
  sdelim  =   '.'
  vout    = ''
  aalist  = []
  odice   =   Tymac_text_diceware.new()
  
  ## process
  vout +=    "## demo: generate #{icc} diceware ngrams of size #{igg}"
  vout +=    "\n"
  vout +=    "\n"
  icc.times{
    aalist << odice.ngram(igg,sdelim);
  }
  vout += aalist.sort.join("\n")
  puts vout
end
