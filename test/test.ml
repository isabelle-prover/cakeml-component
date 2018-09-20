(** generated from Test_Print.thy **)

(* manual *)
datatype HOL_bool = HOL_True | HOL_False and
String_char = String_char_Char of HOL_bool * HOL_bool * HOL_bool * HOL_bool * HOL_bool * HOL_bool * HOL_bool * HOL_bool
and 'a List_list = List_list_Nil | List_list_Cons of 'a * 'a List_list
and Nat_nat = Nat_Suc | Groups_zero__class_zero;

(* automatic *)
fun test__Print_List__append test__Print_test____Print__seq____list_ = (case
(test__Print_test____Print__seq____list_) of (List_list_Nil ) => (fn
test__Print_test____Print__seq____list_ => (case
(test__Print_test____Print__seq____list_) of (ys_0) => (ys_0))) |
(List_list_Cons (x_0) (xs_0)) => (fn xs_0_ => (case (xs_0_) of (ys_0) =>
(List_list_Cons (x_0) (((((test__Print_List__append)) ((xs_0)))) ((ys_0)))))))
and test__Print_Show____Instances__show____bool____inst__shows____prec____bool
test__Print_test____Print__seq____list_ = (case
(test__Print_test____Print__seq____list_) of (e0_0) => (fn e0_0_ => (case
(e0_0_) of (e0a_0) => (fn e0a_0_ => (case (e0a_0_) of (e0b_0) =>
(((((((test__Print_Show____Instances__showsp____bool)) ((e0_0)))) ((e0a_0))))
((e0b_0)))))))) and test__Print_Show____Instances__showsp____bool
test__Print_test____Print__seq____list_ = (case
(test__Print_test____Print__seq____list_) of (p_0) => (fn p_0_ => (case (p_0_)
of (HOL_False ) => (fn p_0_ => (case (p_0_) of (e0_0) =>
(((((test__Print_Show__shows____string)) ((List_list_Cons (String_char_Char
(HOL_False ) (HOL_True ) (HOL_True ) (HOL_False ) (HOL_False ) (HOL_False )
(HOL_True ) (HOL_False )) (List_list_Cons (String_char_Char (HOL_True )
(HOL_False ) (HOL_False ) (HOL_False ) (HOL_False ) (HOL_True ) (HOL_True )
(HOL_False )) (List_list_Cons (String_char_Char (HOL_False ) (HOL_False )
(HOL_True ) (HOL_True ) (HOL_False ) (HOL_True ) (HOL_True ) (HOL_False ))
(List_list_Cons (String_char_Char (HOL_True ) (HOL_True ) (HOL_False )
(HOL_False ) (HOL_True ) (HOL_True ) (HOL_True ) (HOL_False )) (List_list_Cons
(String_char_Char (HOL_True ) (HOL_False ) (HOL_True ) (HOL_False ) (HOL_False
) (HOL_True ) (HOL_True ) (HOL_False )) (List_list_Nil ))))))))) ((e0_0))))) |
(HOL_True ) => (fn p_0_ => (case (p_0_) of (e0_0) =>
(((((test__Print_Show__shows____string)) ((List_list_Cons (String_char_Char
(HOL_False ) (HOL_False ) (HOL_True ) (HOL_False ) (HOL_True ) (HOL_False )
(HOL_True ) (HOL_False )) (List_list_Cons (String_char_Char (HOL_False )
(HOL_True ) (HOL_False ) (HOL_False ) (HOL_True ) (HOL_True ) (HOL_True )
(HOL_False )) (List_list_Cons (String_char_Char (HOL_True ) (HOL_False )
(HOL_True ) (HOL_False ) (HOL_True ) (HOL_True ) (HOL_True ) (HOL_False ))
(List_list_Cons (String_char_Char (HOL_True ) (HOL_False ) (HOL_True )
(HOL_False ) (HOL_False ) (HOL_True ) (HOL_True ) (HOL_False )) (List_list_Nil
)))))))) ((e0_0)))))))) and test__Print_Show__shows____string
test__Print_test____Print__seq____list_ = (case
(test__Print_test____Print__seq____list_) of (e0_0) => (fn e0_0_ => (case
(e0_0_) of (e0a_0) => (((((test__Print_List__append)) ((e0_0)))) ((e0a_0))))))
and test__Print_test____Print__f test__Print_test____Print__seq____list_ =
  (case (test__Print_test____Print__seq____list_) of (e0_0) =>
  (((((test__Print_test____Print__seq____list))
  ((((((((test__Print_Show____Instances__show____bool____inst__shows____prec____bool))
  ((Groups_zero__class_zero )))) ((HOL_True )))) ((List_list_Nil ))))))
  ((e0_0)))) and test__Print_test____Print__seq
  test__Print_test____Print__seq____list_ = (case
  (test__Print_test____Print__seq____list_) of (x_0) => (fn x_0_ => (case
  (x_0_) of (y_0) => (x_0)))) and test__Print_test____Print__seq____list
  test__Print_test____Print__seq____list_ = (case
  (test__Print_test____Print__seq____list_) of (List_list_Nil ) => (fn
  test__Print_test____Print__seq____list_ => (case
  (test__Print_test____Print__seq____list_) of (uu_0) => (List_list_Nil ))) |
  (List_list_Cons (x_0) (xs_0)) => (fn xs_0_ => (case (xs_0_) of (f_0) =>
  (List_list_Cons (x_0) (((((test__Print_test____Print__seq))
  ((((((test__Print_test____Print__seq____list)) ((xs_0)))) ((f_0))))))
  ((((f_0)) ((x_0)))))))));


(* manual *)
test__Print_test____Print__f (fn c =>

print (String.implode [Char.chr (

(fn x => (case (x) of (String_char_Char (b0) (b1) (b2) (b3) (b4) (b5) (b6) (b7)) => (((((((((((((((((0)) + ((((1)) * ((case (b0) of (HOL_False ) => (0) | (HOL_True ) => (1))))))) + ((((2)) * ((case (b1) of (HOL_False ) => (0) | (HOL_True ) => (1))))))) + ((((4)) * ((case (b2) of (HOL_False ) => (0) | (HOL_True ) => (1))))))) + ((((8)) * ((case (b3) of (HOL_False ) => (0) | (HOL_True ) => (1))))))) + ((((16)) * ((case (b4) of (HOL_False ) => (0) | (HOL_True ) => (1))))))) + ((((32)) * ((case (b5) of (HOL_False ) => (0) | (HOL_True ) => (1))))))) + ((((64)) * ((case (b6) of (HOL_False ) => (0) | (HOL_True ) => (1))))))) + ((((128)) * ((case (b7) of (HOL_False ) => (0) | (HOL_True ) => (1))))))))

c)])

);
