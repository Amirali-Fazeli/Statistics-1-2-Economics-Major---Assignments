# Amirali_Fazeli
# Student No:440201090


# Q1

A = 1:100
B = sample(A, 10)

# Part a
print(B[3])
print(B[7])

# Part b
B[3] <- B[8]
print(B)

# Part c
B_1 = B[B > 4]
print(B_1)

# Part d
for (i in seq_along(B)){
  if (i %% 2 == 0){
    B[i] <- NA
  }
}
print(B)

# Part e
B_2 = !is.na(B)
B_3 = B[B_2]
print(B_3)


# Q2

rows = 20
columns = 5

matrix_elements = rnorm(rows * columns, mean = 0, sd = 1)
X = matrix(matrix_elements, nrow = rows, ncol = columns)

print(X)
C = t(X)
print(C)
D = (t(X) %*% X) ** (-1)
E = (X %*% D %*% t(X))
print(E)


# Q3

rows = 1:15 
columns = 1:3

G = matrix(data = 10, nrow = 15, ncol = 1)
H = matrix(data = -10, nrow = 15, ncol = 1)
I = matrix(data = 10, nrow = 15, ncol = 1)

J = cbind(G, H)
K = cbind(J, I) # DAR SOORATE SOAL, MATRIX B = MATRIX K

L = t(K)
M = L %*% K
print(M)


# Q4

for (i in range(1:20)){
  for (j in range(1:5)){
    outcome = ((i ** 4) / (3 + j))
  }
}
print(outcome)


# Q5

compute_sequence = function(x, n) {
  outcome_1 = 0
  for (i in range(1:n)) {
    outcome_1 = outcome_1 + (x ** i) / i
  }
  outcome_1 = outcome_1 + 1
  return(outcome_1)
}

x = readline()
x = as.integer(x)
n = readline()
n = as.integer(n)

outcome_1 = compute_sequence(x, n)
print(outcome_1)


