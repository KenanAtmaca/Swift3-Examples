open class A {
    
    open var name:String = ""
    
    init(name:String) {
        
        self.name = name
    }
    
    open func foo(str:String) {
        
        self.name += " \(str)"
        
    }
    
}

class B:A {

    override func foo(str: String) {
    
        super.foo(str: " \(str)")
        
    }
    
}

var obj = A(name: "Kenan")
obj.name // Kenan
obj.foo(str: "Atmaca")
obj.name // Kenan Atmaca


var objB = B(name: "Ankara")
objB.name // Ahmet
objB.foo(str: "İzmir")
objB.name // Ankara İzmir
