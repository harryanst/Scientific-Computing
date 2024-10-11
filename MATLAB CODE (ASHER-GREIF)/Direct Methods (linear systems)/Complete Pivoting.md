# Example of Complete Pivoting for Linear Systems of Equations

Complete pivoting is a strategy used in Gaussian elimination to avoid numerical instability. In this method, both row and column interchanges are made at every step to choose the largest possible element in the remaining submatrix as the pivot.

## Example System of Equations:

$$
\begin{aligned}
    2x + y + z &= 3 \\
    x + 3y + 2z &= 7 \\
    3x + 2y + 4z &= 10
\end{aligned}
$$

We can write this system in matrix form \( A \mathbf{x} = \mathbf{b} \):

$$
A = \begin{pmatrix}
2 & 1 & 1 \\
1 & 3 & 2 \\
3 & 2 & 4
\end{pmatrix}, \quad
\mathbf{b} = \begin{pmatrix} 
3 \\ 
7 \\ 
10 
\end{pmatrix}
$$


We aim to solve for $\mathbf{x}\$ using complete pivoting:




### Step 1: Find the largest element in the matrix \( A \)
At the beginning, the entire matrix is considered. The largest element in absolute value is  4  in position \( A_{3,3} \). We will swap the 3rd row with the 1st row, and the 3rd column with the 1st column to bring this element to the top-left.

After the swaps:

$$
A = \begin{pmatrix}
4 & 2 & 3 \\
2 & 1 & 2 \\
1 & 3 & 1
\end{pmatrix}, \quad
\mathbf{b} = \begin{pmatrix} 10 \\ 
                            3 \\ 
                            7 \end{pmatrix}
$$

Note: The variables \(x_1, x_2, x_3\) now correspond to the columns after the swaps.

### Step 2: Perform Gaussian elimination
We now use Gaussian elimination to reduce the matrix. First, normalize the first row by dividing by the pivot \(4\).

$$
\frac{1}{4} R_1 \Rightarrow \begin{pmatrix} 
1 & \frac{1}{2} & \frac{3}{4} \\ 
2 & 1 & 2 \\ 
1 & 3 & 1 
\end{pmatrix}, \quad
\mathbf{b} = \begin{pmatrix} 2.5 \\ 
                                3 \\ 
                                7 \end{pmatrix}
$$

Next, eliminate the entries below the pivot (i.e., in column 1):

For row 2:

$$
R_2 - 2R_1 \Rightarrow \begin{pmatrix} 0 & 0 & \frac{1}{2} \end{pmatrix}, \quad
\mathbf{b}_2 = 3 - 2(2.5) = -2
$$

For row 3:

$$
R_3 - R_1 \Rightarrow \begin{pmatrix} 0 & \frac{5}{2} & \frac{-1}{4} \end{pmatrix}, \quad
\mathbf{b}_3 = 7 - 1(2.5) = 4.5
$$

The matrix and the vector \( \mathbf{b} \) are now:

$$
A = \begin{pmatrix} 
1 & \frac{1}{2} & \frac{3}{4} \\ 
0 & 0 & \frac{1}{2} \\ 
0 & \frac{5}{2} & \frac{-1}{4} 
\end{pmatrix}, \quad
\mathbf{b} = \begin{pmatrix} 2.5 \\ 
                            -2 \\ 
                            4.5 \end{pmatrix}
$$

### Step 3: Pivot on the next largest element
Now, focus on the \(2 \times 2\) submatrix at the bottom-right. The largest element is \( \frac{5}{2} \) in \( A_{3,2} \). Swap row 2 with row 3, and column 2 with column 3.

After the swaps:

$$
A = \begin{pmatrix} 
1 & \frac{3}{4} & \frac{1}{2} \\ 
0 & \frac{-1}{4} & \frac{5}{2} \\ 
0 & \frac{1}{2} & 0 
\end{pmatrix}, \quad
\mathbf{b} = \begin{pmatrix} 2.5 \\ 
                            4.5 \\ 
                            -2 \end{pmatrix}
$$

### Step 4: Continue elimination
Perform Gaussian elimination on the \(2 \times 2\) submatrix to make it upper triangular.

For row 3:

$$
R_3 - 2 \times R_2 \Rightarrow \begin{pmatrix} 0 & 0 & -2 \end{pmatrix}, \quad
\mathbf{b}_3 = -2 - 2(4.5) = 3
$$

Now the matrix is upper triangular:

$$
A = \begin{pmatrix} 
1 & \frac{3}{4} & \frac{1}{2} \\ 
0 & 1 & -2 \\ 
0 & 0 & -2 
\end{pmatrix}, \quad
\mathbf{b} = \begin{pmatrix} 2.5 \\ 
                            4.5 \\ 
                            3 \end{pmatrix}
$$

### Step 5: Back-substitution
Now that we have an upper triangular system, we can solve by back-substitution.

1. From the third equation:

$$
-2 z = 3 \Rightarrow z = -1.5
$$

2. From the second equation:

$$
y - 2(-1.5) = 4.5 \Rightarrow y = 4
$$

3. From the first equation:

$$
x + \frac{3}{4}(4) + \frac{1}{2}(-1.5) = 2.5 \Rightarrow x = 2
$$

Thus, the solution to the system is:

$$
x = 2, \quad y = 4, \quad z = -1.5
$$
