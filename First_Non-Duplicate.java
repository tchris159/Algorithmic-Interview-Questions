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