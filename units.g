# Generator of normalized unit group of group algebra $FC_2$

OrderNormalizedUnitGroup:=function(p,n)
local F,G,m,FG,e,q,i1,i2,r,z,s,j,w,v;

# Group ring of cyclic group of order 2 over a finite field with p^n elements
F:=GF(p^n);;
G:=CyclicGroup(2);;
FG:=GroupRing(F,G);;
e:=Identity(FG);;
i1:=Embedding(G,FG);;
i2:=Embedding(F,FG);;

# Some magical elements in the finite field

q:=PrimitiveElement(F);;
# the generator of the cyclic group $F^{*}$
r:=(q^((Size(F) - 1)));;
z:=q^((Size(F)-1)/2);;
s:=r+r ;;
j:=(r+q)/s ;;

# Generating Set of the group G
m:=MinimalGeneratingSet(G);;

# The generator of unit group $V(FC_2)$
w:= (j)^i2 + ((e + (z*j)^(i2))*(m[1]^i1) );;

v:=Order(w);
return w,v;
end;
