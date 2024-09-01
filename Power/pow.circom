pragma circom 2.1.4;

// Create a circuit which takes an input 'a',(array of length 2 ) , then  implement power modulo 
// and return it using output 'c'.

// HINT: Non Quadratic constraints are not allowed. 

template Power() {
    signal input a[2];  // 输入变量
    signal output c; // 输出变量

    // Intermediate signals for the multiplication
    signal temp; // 存储中间乘法结果
    signal one;  // 常数1，用于乘法

    // 1. Initialize the output as 1 (a^0 = 1)
    one <== 1;
    c <== one;

    // 2. Calculate a^n using a loop
    for (var i = 0; i < a[1]; i++) {
        temp <== c * a[0]; // 乘法
        c <== temp;      // 更新输出
    }
}

// 主电路
component main = Power();