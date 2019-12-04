# Enigma
### Learning Goals / Areas of Focus
* Practice breaking a program into logical components
* Build classes that demonstrate single responsibilities
* Test drive a well-designed Object Oriented solution
* Work with file i/o
### Encryption
The encryption is based on the Caesar Cipher. The idea is that we can translate a character by shifting it a certain number of places down the alphabet. For more on the Caesar cipher, See [This Description](http://practicalcryptography.com/ciphers/caesar-cipher/) or the [Wikipedia Page](https://en.wikipedia.org/wiki/Caesar_cipher)

However, instead of using the same shift for every character, our algorithm will use 4 different shifts known as the A, B, C, and D shifts. Every fourth character will be shifted by the same amount, so the 1st, 5th, and 9th characters will be shifted with the A shift, the 2nd, 6th, and 10th characters will be shifted with the B shift, etc.

### CLI File I/O
Inside of `message.txt` put the message you'd like to encrypt\
In your terminal:
```
$ ruby ./runner/encrypt.rb message.txt encrypted.txt
Created 'encrypted.txt' with the key 82648 and date 240818
```
This creates the file `encrypted.txt` with your encrypted string
```
$ ruby ./runner/decrypt.rb encrypted.txt decrypted.txt 82648 240818
Created 'decrypted.txt' with the key 82648 and date 240818
```
This creates the file `decrypted.txt` with your decrypted string from the `encrypted.txt` file
