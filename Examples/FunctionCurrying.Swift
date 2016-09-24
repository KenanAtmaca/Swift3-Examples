
func chaFunc(_ x:Int) -> (Int) -> Int {
     func inChaFunc(_ y:Int) -> Int {
        return x + y
    }
    return inChaFunc
}
 
chaFunc(2)(104) // 106

func fourChainedFunctions(_ a: Int) -> ((Int) -> ((Int) -> ((Int) -> Int))) {
    return { b in
        return { c in
            return { d in
                return a + b + c + d
            }
        }
    }
}

fourChainedFunctions(1)(2)(3)(4) // 10

func add(_ a: Int) -> ((Int) -> Int) {
    return { b in a * b }
}

add(2)(9) // 18

func chainedStr(_ a:String) -> ((String) -> (String) -> String) {
    
    return { b in
        return { c in
            return "\(a) \(b) \(c)"
        }
    }
}

chainedStr("A")("B")("C") // A B C
