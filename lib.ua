# All divisors < n.
Divisors ← ▽⤚(=₀◿)⊸(↘1⇡)

# Speeds up the factorisation process.
PrimeFactors ← ▽⊸=⊸(⊣°/×)Divisors

# FAST primes generator.
Primes ← ▽=⊣⊸⊸°/×↘2⇡

# Euler's totient function.
# https://math.stackexchange.com/questions/720847/is-there-a-recursive-formula-for-eulers-totient-function#853300
# Even faster, taken from Ruby solution.
Totient ← /×⊕(×⊃(-1|˜ⁿ⊙-₁)⊃⊢⧻)⊸⊛°/×

# TotientGCD ← /+=1∨⊙¤+1⊸⇡ # Slower
# Totient ← |1 memo(⨬(-⊸(/+≡Solve Divisors)|1)⊸=₁) # also slower
