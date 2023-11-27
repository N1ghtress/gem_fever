type ressource = Emerald | Sapphire | Ruby | Onyx | Diamond | Gold

(* type card = {
  level: int;
  production: ressource;
  points: int;
  cost: (int * ressource) list;
}

type noble = {
  points: int;
  cost: (int * ressource) list;
}
*)

type game = {
  gem_stock: (ressource * int) list;
  (* 
  card_stacks: card list * card list * card list;
  nobles: noble list;
  *)
}

let init_game =
  { 
    gem_stock = [(Emerald, 7); (Sapphire, 7); (Ruby, 7); (Onyx, 7); (Diamond, 7); (Gold, 5)];
    (*
    card_stacks = ([], [], []);
    nobles = []
    *)
  }

let string_of_ressource r =
  match r with
  | Emerald -> "Emerald"
  | Sapphire -> "Sapphire"
  | Ruby -> "Ruby"
  | Onyx -> "Onyx"
  | Diamond -> "Diamond"
  | Gold -> "Gold"

let string_of_game game =
  let s = List.fold_left (fun a e -> a ^ (e |> fst |> string_of_ressource) ^ ": " ^ (e |> snd |> string_of_int) ^ "\n") "" game.gem_stock in
  s
