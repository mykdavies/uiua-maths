# All distinct divisors including 1, n.
AllDivisors ← ◴⊂⟜(⇌÷)▽⤚(=₀◿)⊸(↘1⇡+1⌊⊸√)
┌─╴test
  ˙⍤ ≍[1 3 9] AllDivisors 9
└─╴
# Divisors ← ▽⤚(=₀◿)⊸(↘1⇡)
# All distinct divisors including 1, excluding n, except for 1.
Divisors ← ⍥(↘¯1)≠1⟜AllDivisors
┌─╴test
  ˙⍤ ≍[1] Divisors 1
  ˙⍤ ≍[1 3] Divisors 9
└─╴

# # Speeds up the factorisation process.
# PrimeFactors ← ↘1▽⊸=⊣⊸°/×Divisors
# ┌─╴test
#   ˙⍤ ≍[2 3 5 7 11 13] PrimeFactors 30030
# └─╴

# Best simple primes generator.
Primes ← ▽=⊣⊸⊸°/×↘2⇡

# Euler's totient function.
# https://math.stackexchange.com/questions/720847/is-there-a-recursive-formula-for-eulers-totient-function#853300
# Even faster, taken from Ruby solution.
Totient ← /×⊕(×⊃(-1|˜ⁿ⊙-₁)⊃⊢⧻)⊸⊛°/×

# TotientGCD ← /+=1∨⊙¤+1⊸⇡ # Slower
# Totient ← |1 memo(⨬(-⊸(/+≡Solve Divisors)|1)⊸=₁) # also slower

# Fast powmod based on https://en.wikipedia.org/wiki/Modular_exponentiation#Right-to-left_binary_method
Powmod ← ⊙◌∧(⊸˜◿×⊙˙×)⊙1+1×-1⊙(⇌⋯)

# Factorial. Memoised.
Factorial ← |1 memo(⨬(×Factorial⊸-₁|1)⊸<₂)
