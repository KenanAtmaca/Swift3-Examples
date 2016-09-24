func swapValue<T>(x: inout T,y: inout T) {
    
    let temp:T = x
    x = y
    y = temp
    
}

var a = 23
var b = 99

swapValue(x: &a, y: &b)

a // 99
b // 23

var strA = "Ankara"
var strB = "Istanbul"

swapValue(x: &strA, y: &strB)

strA // Istanbul
strB // Ankara
