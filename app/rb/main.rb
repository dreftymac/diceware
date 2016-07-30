#!/usr/bin/ruby
### begin_: file_info
    ### <reg-file_info>
    ### main:
    ###   - date: created="2014-09-16 12:12:07"
    ###     last: lastmod="2014-09-16 12:12:07"
    ###     desc: |
    ###     
    ###         main.rb
    ###         
    ###         sample runner for tymac_text_diceware
    ###         output a diceware ngram of size igg, icc times in a row
    ### </reg-file_info>
    
### begin_: init ruby
  require "#{File.dirname(__FILE__)}/../rblib/tymac_text_diceware"

### begin_: demo code
### <reg-demo>
  ### <reg-xmp_ ddef=" generate some diceware words ;; generate ">
  ###!- caption: generate some diceware words
  ###!  date:   created="2008-06-21 07:29:21"
  ###!  body: |
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
  ### </reg-xmp_>
  
### </reg-demo>

### begin_: end_ruby
__END__
