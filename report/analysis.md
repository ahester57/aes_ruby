# AES File Analysis
### Austin Hester
### CS 5732

Analyse AES speeds.

----

## File sizes

* small:  `bs_small.txt`  - 3 bytes
* medium: `bs_medium.txt` - 3025 bytes
* big:    `bs_big.txt`    - 1205600 bytes = 1.2 MB

----

How many times can encryption + decryption be done in one second for each file
size using:

## AES-128-CBC

Numbers are shown in (encrypts and decrypts) per second

* small:  69428 
* medium: 46862
* big:    257

----

## AES-256-CBC

Numbers are shown in (encrypts and decrypts) per second

* small:  68790
* medium: 42778
* big:    215

----

## How Big of File can we decrypt in 1 second?


