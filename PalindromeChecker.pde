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
  word = noSpaces(word);
  word = noCapitals(word);
  word = returnLetters(word);
  int miscount = 0;
  int middleLetter = word.length()/2;
  int frontLetter = 0;
  int endLetter = word.length() - 1;
  	for(int i = 0; i <= middleLetter; i++){
  		if(word.charAt(frontLetter) == word.charAt(endLetter)){
  			frontLetter++;
  			endLetter--;
  		}
  		else if(word.charAt(frontLetter) != word.charAt(endLetter)){
  			miscount++;
  		}
  	}
  	if(miscount >= 1){
  		miscount = 0;
  		return false;
  	}
  	else 
  		return true;
}
public String noSpaces(String sWord){
  String temp = "";
  for(int i = 0; i < sWord.length(); i++){
     if(Character.isLetter(sWord.charAt(i)))
        temp = temp + sWord.charAt(i);
  }
  return temp;
}

public String noCapitals(String sWord){
    return sWord.toLowerCase();
}

public String returnLetters(String sString){
   String temp = "";
   for(int i = 0; i < sString.length(); i++){
      if(Character.isLetter(sString.charAt(i)))
        temp += sString.substring(i,i+1);
   }
   return temp;
}