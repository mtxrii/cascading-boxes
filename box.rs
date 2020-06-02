fn main() {
    let x = 4;
    
    print!("+");
    for i in 0..x {
        println!("-+");
        for _j in 0..i {
            print!("  ");
        }
        println!("| |");
        for _j in 0..i {
            print!("  ");
        }
        print!("+-+");
    }
}

//+-+
//| |
//+-+-+
//  | |
//  +-+-+
//    | |
//    +-+-+
//      | |
//      +-+
