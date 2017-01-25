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
  if(reverse(onlyLetters(noSpaces(word.toLowerCase()))).equals(onlyLetters(noSpaces(word.toLowerCase()))))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String dee = new String();
    for(int i = str.length() - 1; i >= 0; i--)
    {
      dee = dee + str.charAt(i);
    }
    return dee;
}

public String noSpaces(String sWord){
  String www = "";
  for(int i = 0; i < sWord.length(); i++)
  {
    if(sWord.charAt(i) != ' ')
    {
      www = www + sWord.charAt(i);
    }
  }
  return www;
}

public String onlyLetters(String sString){
  String boe = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      boe = boe + sString.charAt(i);
  return boe;
}