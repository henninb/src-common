fun  verify([],R) = false
|    verify([a],R)= false
|    verify(x::y::xs,R) =  if R(x,y) then true
       else verify(y::xs,R)
;


fun succ([],R)= []
|   succ([a],R)= [a]
|   succ(L,R) = if verify(L,R) then let  val M=rev(L);
                    val x=hd(M) ;
             val y=tl(M)
          in
             rest([x],y,[x],R)
          end
        else []
;

fun merge ([], M, _) = M
|   merge (L, [], _) = L
|   merge (L as a::LL, M as b::MM, R) =
    if R (a, b) then a::merge(LL, M, R)
    else b::merge(L, MM, R)
;

fun split ([]) = ([], [])
|   split ([a]) = ([a], [])
|   split (a::b::L) =
    let
        val (M, N) = split (L)
    in
        (a::M, b::N)
    end
;
fun mergesort ([], _) = []
|   mergesort ([a], _) = [a]
|   mergesort (L, R) =
   let val (M, N) = split (L);
       val (MM, NN) = (mergesort (M, R), mergesort(N, R))
   in
       merge (MM, NN, R)
   end
;

fun mergesort ([], _) = []
|   mergesort ([a], _) = [a]
|   mergesort (L, R) =
   let val (M, N) = split (L);
       val (MM, NN) = (mergesort (M, R), mergesort(N, R))
   in
       merge (MM, NN, R)
   end
;

fun  permute(N,L,M,R)=if M=L then M::N
     else let val N=M::N in permute(N,L,succ(M,R),R)
end;


fun orderedperms(L,R)= let
       val A= permute([],rev(mergesort(L,R)),L,R);
             val A= permute(A,L,mergesort(L,R),R)
      in A
end;
