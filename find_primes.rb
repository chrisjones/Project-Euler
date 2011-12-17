class FindPrimes < Array

  attr_accessor :xp

  def initialize(lim)
    sqrtlim=Math.sqrt(lim)
    pp=2
    ss=[pp]
    ep=[pp]
    pp+=1
    rss=[ss[0]]
    tp=[pp]
    i=0
    rss.push(rss[i]*tp[0])
    @xp=[]
    pp+=ss[0]
    npp=pp
    tp.push(npp)
    while npp<lim
      i+=1
      while npp<rss[i]+1
        ss.each do |n|
          npp=pp+n
          break if npp>lim
          pp=npp if npp<=rss[i]+1
          sqrtnpp=Math.sqrt(npp)
          test=true
          tp.each do |q|
            if sqrtnpp<q
              break
            elsif npp%q==0:
              test=false
              break
            end
          end
          if test
            if npp<=sqrtlim 
              tp.push(npp)
            else
              @xp.push(npp)
            end
          end
        end
        break if npp>lim
      end
      break if npp>lim
      lrpp=pp
      nss=[]
      while pp<(rss[i]+1)*2-1:
        ss.each do |n|
          npp=pp+n
          break if npp>lim
          sqrtnpp=Math.sqrt(npp)
          test=true
          tp.each do |q|
            if sqrtnpp<q
              break
            elsif npp%q==0:
              test=false
              break
            end
          end
          if test
            if npp<=sqrtlim
              tp.push(npp)
            else
              @xp.push(npp)
            end
          end
          if npp%tp[0]!=0:
            nss.push(npp-lrpp)
            lrpp=npp
          end
          pp=npp
        end
        break if npp>lim
      end
      break if npp>lim
      ss=nss
      ep.push(tp[0])
      tp.shift
      rss.push(rss[i]*tp[0])
      npp=lrpp
    end

    @xp += ep 
    @xp += tp

    return @xp.sort!
  end

end