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

### How Big of File can we decrypt in 1 second using AES-128-CBC?

#### Using small as sample:
3 B / (1 s / 69428 rounds) = 208 kB

(not even close)

### Using medium as a sample:
3025 B / (1 s / 46862 rounds) = 142 MB 

#### Using big as sample:
1205600 B / (1 s / 257 rounds) ~= 309 MB

* very_big:    `bs_very_big.txt`    - 363360000 bytes = 363 MB

Which big is actually fairly accurate:
```
How Big
1:      tiny
2:      medium
3:      big
4:      very big (360 MB)
0:      Exit
4
{:count=>1}
  0.828000   0.219000   1.047000 (  1.045678)
  ```

----

## AES-256-CBC

Numbers are shown in (encrypts and decrypts) per second

* small:  68790
* medium: 42778
* big:    215

### How Big of File can we decrypt in 1 second using AES-256-CBC?

#### Using small as sample:
3 B / (1 s / 68790 rounds) = 206 kB

(which we know is bullcrap from our experience with AES-128-CBC)

### Using medium as a sample:
3025 B / (1 s / 42778 rounds) = 129 MB 

#### Using big as sample:
1205600 B / (1 s / 215 rounds) ~= 309 MB

* very_medium:    `bs_very_medium.txt`    - 271440000 bytes = 271 MB

Which big is actually very accurate:
```
How Big
1:      tiny
2:      medium
3:      big
4:      very medium (271 MB)
5:      very big (363 MB)
0:      Exit
4
{:count=>2}
  1.375000   0.641000   2.016000 (  2.010340)
  ```

It was even able to squeeze in an extra one because it finished right under the 1 second mark.

