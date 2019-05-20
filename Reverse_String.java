public static String reverseString(String str) {
    String inputString = str;
    String outputString = null;

    StringBuilder sb = new StringBuilder();

    if (inputString != null) {
        for (int i = inputString.length-1; i >= 0; i--) {
            sb.append(inputString.charAt(i)); // append backwards
        }
        outpuString = sb.toString(); // object to string
    }
    return outputString;
}