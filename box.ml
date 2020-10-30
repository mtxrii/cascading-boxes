open Printf

let x = 4;;

printf "+";;

for i = 0 to x-1 do
  printf "-+\n";
  for j = 0 to i-1 do
    printf "  ";
  done;
  
  printf "| |\n";
  for j = 0 to i-1 do
    printf "  ";
  done;
  
  printf "+-+"
done;;
