package utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class PasswordUtils {

    // constructer of utils class should not to be public
    // This prevents instantiation of PasswordUtils, ensuring it is used only as a static utility class.
    private PasswordUtils() {
        throw new IllegalStateException("Utility class");
    }
    // Generates a random salt for password hashing.
    public static String generateSalt() {
        //a cryptographically strong random number generator, to generate a random 16-byte salt.
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[16];
        // random 16 byte
        random.nextBytes(salt);
        return bytesToHex(salt);
    }

    private static String bytesToHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }

    //Hashes a password with the provided salt using SHA-256 algorithm.
    public static String hashPassword(String password, String salt) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(salt.getBytes());  // Add salt to hashing process
            byte[] hashedPassword = md.digest(password.getBytes());
            return bytesToHex(hashedPassword); // return hexadecimal string hash password
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 algorithm not found", e);
        }
    }

    //Verifies if a plain text password matches a stored hash when combined

    public static boolean verifyPassword(String plainPassword, String storedHash, String storedSalt) {
        String newHash = hashPassword(plainPassword, storedSalt);
        return newHash.equals(storedHash);
    }

    public static String generateRandomPassword(int length) {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()";
        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < length; i++) {
            int randomIndex = random.nextInt(chars.length());
            sb.append(chars.charAt(randomIndex));
        }

        return sb.toString();
    }
}
