class A {
    
    fileprivate var fpname:String!
    private var pname:String!
    
    init(n:String) {
        self.pname = n
        self.fpname = n
    }
    
}

extension A {
    
    func addStr(str:String) -> String {
        
        var d:String = self.fpname
        d += str
        return d
        
    }
}

var obj = A(n: "Kenan")
obj.addStr(str: "++") // Kenan++
