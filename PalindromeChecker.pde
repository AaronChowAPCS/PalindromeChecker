public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  	for(int i = 0; i <= word.length() / 2; i++){
  		for(int j  = word.length() - 1; j >= word.length() / 2; j--){
  			if(word.charAt(i) != word.charAt(j))
  				System.out.println(5555555);
  				return false;
  		}
  	}
  	return true;
}

