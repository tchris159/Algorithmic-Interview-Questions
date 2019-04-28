/*  Asked by InfoSys
 * You are given an m x n 2D image matrix where each integer represents a pixel. Flip it in-place along its vertical axis.
 *
 * Example:
 * Input image :  
 *             1 0
 *             1 0 
 *
 * Modified to :   
 *             0 1
 *             0 1
 *
 */

public static void flipItVerticalAxid(int[][] matrix) {
    for (int row = 0; row < matrix.length; row++) { // iterate through all of the rows
        for (int col = 0; col < matrix[row].length/2; col++) { // iterate through the first half of the columns
            temp = matrix[row][col]; // temporary variable to store the current cell

            // set the current cell to a cell on the same row, and the 
            matrix[row][col] = matrix[row][(matrix.length-1) - col];
            // as the column increases, it goes deeper inward to teh matrix

            // perform the swap on the right side
            matrix[row][(matrix.length -1) - col] = temp;
        }
    }
}