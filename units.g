OrderNormalizedUnitGroup:=function(p,n)
local f,g,m,fg,e,q,i1,i2,r,z,s,j,w,v;
f:=GF(p^n);;
g:=CyclicGroup(2);;
m:=MinimalGeneratingSet(g);;
fg:=GroupRing(f,g);;
e:=Identity(fg);;
q:=PrimitiveElement(f);;
i1:=Embedding(g,fg);;
i2:=Embedding(f,fg);;
r:=(q^((Size(f) - 1)));;
z:=q^((Size(f)-1)/2);;
s:=r+r ;;
j:=(r+q)/s ;;
w:= (j)^i2 + ((e + (z*j)^(i2))*(m[1]^i1) );;
v:=Order(w);
return v;
end;
