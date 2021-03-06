
(* Correct example *)
(* Corresponding concrete syntax:

	let x = 17 in
		let h = fun (p:int) -> 5+p in
			h(x);
*)
run (Let("x", EInt(17), Let("h", Fun("p", TypeOfInt, Op("+", EInt(5), Ide("p"))), Apply(Ide("h"), Ide("x"))))) ;;

flush stdout ;;

(* Wrong example *)
(* Corresponding concrete syntax:

	let x = 17 in
		let h = fun (p:int) -> 5+p in
			x(h);
*)
run (Let("x", EInt(17), Let("h", Fun("p", TypeOfInt, Op("+", EInt(5), Ide("p"))), Apply(Ide("x"), Ide("h"))))) ;;

