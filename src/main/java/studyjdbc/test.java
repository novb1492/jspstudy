package studyjdbc;

public class test {

	public static void main(String[] args) {
		for(char c='a';c<='z';c++)
		{
			System.out.print(c+" ");
		}
		System.out.println("");
		for(int i=1;i<=3;i++)
		{
			System.out.print(i);
			for(char c='a';c<='z';c++)
			{
				System.out.print('s'+" ");
			}
			System.out.println(" ");	
		}

	}

}
