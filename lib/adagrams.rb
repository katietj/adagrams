#Katie and Katherine Anagrams

letters = %w[a,a,a,a,a,a,a,a,a,a,b,b,c,c,d,d,d,d,e,e,e,e,e,e,e,e,e,e,e,e,f,f,g,g,g,h,h,i,i,i,i,i,i,i,i,i,k,l,l,l,l,m,m,n,n,n,n,n,n,o,o,o,o,o,o,o,o,p,p,q,r,r,r,r,r,r,s,s,s,s,t,t,t,t,t,t,u,u,u,u,v,v,w,w,x,y,y,z]
user_hand = []
def draw_letters
  10.times do
  user_hand << letters.delete_at(rand(letters.length))
