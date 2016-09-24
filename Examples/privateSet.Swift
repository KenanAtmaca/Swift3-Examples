struct noCounter {
    
    private(set) var no:Int = 0
    
    mutating func counter() {
        self.no += 1
    }
    
}


var obj = noCounter()
obj.no = 11 // Error!

obj.counter()
obj.counter()
obj.counter()

obj.no // 3
