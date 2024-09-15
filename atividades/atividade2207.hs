-- CASAMENTO DE PADRÕES

up ch 
| ls==[] = ch
| otherwise (ls !! 0)
where minus = ['a' .. 'z']
      maius = ['A' .. 'Z']
      f = zip minus maius 
      ls = [ b | (a,b) <- f, a==ch ]
    
ca'pword [] = ""
ca'pword (x:s) = (up x):safe

cap [] = ""
cap s = unwords ws 
where ws = words s
      ws = [ca'pword w | w <- ws]