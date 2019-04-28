/* Utilize a Hashtable data structure to store characters mapped to strings.
 *
 * First pass: iterate through the array, and store each element as a key, and its frequency as a value.
 * Optimzed solution: if it needs a second update, break out of the loop, then return that element because 
 * the second update indicates a duplicate.
 * 
 * Second pass: iterate through the array and if the element is equal to 1, that is the first non duplicate. 
 * */

public static char firstNonRepeatedCharacter(String str) {
    HashMap<Character, Integer> characterHashTable = new HashMap<>();
    
    for (int i = 0; i < str.length; i++) {
        char c = str.charAt(i); 
        if (characterHashTable.contains(c)) {
            characterHashTable.put(c, characterHashTable(c) + 1);
        } else {
            characterHashTable.put(c, 1);
        }
    }

    for (int i = 0; i < str.length; i++) {
        char c = str.charAt(i);
        if (characterHashTable.get(c) == 1) {
            return c;
        }
    }
    return null;
}
