object Main extends App {
  var x : Int = 4

  print("+")
  for (i <- 0 until x) {
    println("-+")
    for (j <- 0 until i) {
      print("  ")
    }

    println("| |")
    for (j <- 0 until i) {
      print("  ")
    }

    print("+-+")
  }
}
