let main () =
  let msg : Interface_t.msg = {
    subject = "hello";
    body = None;
  } in
  print_endline (Interface_j.string_of_msg msg)

let () = main ()
