var ptr = UnsafeMutablePointer<Int>.allocate(capacity: 1)

ptr.initialize(to: 9)
ptr.pointee // 9
ptr.deallocate(capacity: 1)
ptr.pointee // Non Value

func pointerFunc(ptr:UnsafeMutablePointer<Int>) -> Int {
    
    if ptr.pointee == 9 {
        return 1
    }
    
    return 0
}

pointerFunc(ptr: ptr) // 0

var ptrStr = UnsafeMutablePointer<String>.allocate(capacity: 1)
ptrStr.initialize(to: "Kenan")
ptrStr.pointee // Kenan


func point(x:UnsafeMutableRawPointer?) {
    print(x)
}

var cc = 60

point(x: &cc) // 60


var ptrUnsafe = UnsafePointer<Int>.init(bitPattern: 31)
ptrUnsafe?.hashValue // 31


func takesAPointer(_ p: UnsafePointer<Float>) {
    print(p.pointee) // 3.14
}

var x: Float = 3.14
takesAPointer(&x)

