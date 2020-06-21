public class Main
{
	public static void main(String[] args) {
	    int x = 4;
	    
		System.out.print("+");
		for (int i = 0; i < x; i++) {
		    System.out.println("-+");
		    for (int j = 0; j < i; j++) {
		        System.out.print("  ");
		    }
		    
		    System.out.println("| |");
		    for (int j = 0; j < i; j++) {
		        System.out.print("  ");
		    }
		    
		    System.out.print("+-+");
		} 
		
	}
}
