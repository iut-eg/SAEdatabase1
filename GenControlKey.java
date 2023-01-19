public class GenControlKey {
    public static void main(String args[]) {
     
      String numbers= "IDFRABERTHIER<9409923102854CORINNE<6512068F"; // => 8 as key
      int ControlKey;
      ControlKey = buildKey(numbers);
      System.out.println(ControlKey);
    }

    public static int buildKey(String chaine) {
  if (chaine == null || !chaine.matches("[\\d\\p{Upper}<]*")){
   throw new IllegalArgumentException("Chaine invalide");
  }
  
  final int[] facteurs = {7, 3, 1};
  int resultat = 0;
  for (int i = 0; i < chaine.length() - 1; i++) {
    char c = chaine.charAt(i);
    if(c == '<') continue;
    resultat += Character.getNumericValue(c) * facteurs[i % 3];
  }
  return resultat % 10;
}
    
}
