
public static String duplicate(int[] numbers) {
    TreeSet<Integer> result = new TreeSet<Integer>(); 
    //create a new treeset implemented using red/black trees which are self balancing
    Arrays.sort(numbers); 
    // begin by sorting the array

    for (int i = 1; i < numbers.length; i++) { // start at 1 because checking previous
        // if the previous element is the same as the current, it is a duplicate
        if (numbers[i] == numbers[i-1]) {
            result.add(numbers[i]); // add it to the self-balancing treeset
        }
    }
    return result.toString(); // iterates over in sorted order the tree and returns the string version (ascending ints)
}


/*  Asked by Bloomberg level 1
 *
 * Write a method duplicate to find the repeated or duplicate elements in an array. 
 * This method should return a list of repeated integers in a string with the elements sorted in ascending order (as illustrated below). 
 * duplicate({1,3,4,2,1}) --> "[1]"
 * 
 * duplicate({1,3,4,2,1,2,4}) --> "[1, 2, 4]"
 * 
 * */


/* This algorithm is radically simplified by using both an Array and a treeset implementation which has the property of 
 * the set API and sorted ordering in a tree.
 * 
 * 1. Sort the array numerically, begin iterating the array. 
 * 2. Check the previous element in the array. If it equals the current element, you have a duplicate.
 * 3. Using a TreeSet can radically simplify the implementation.
 *
 * Interesting Note:
 * Collections.sort() Operates on List Whereas Arrays.sort() Operates on an Array.
 * Arrays.sort() uses Dual-Pivot Quicksort for Primitive Arrays and MergeSort for sorting array of Objects.
 * 
 * 
 * 
 *  */