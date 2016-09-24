enum ErrorHandling:Error {
    
    case error(state:String)
    
}

func pointControl(no:Int) throws -> String? {
    
    var point:String? = nil
    
    guard no > 0 else {
        throw ErrorHandling.error(state: "Error no!")
    }
    
    switch no {
        
    case 0...39: point = "FF"
    case 40...49: point = "FD"
    case 50...57: point = "DD"
    case 58...64: point = "DC"
    case 65...74: point = "CC"
    case 75...79: point = "CB"
    case 80...84: point = "BB"
    case 85...89: point = "BA"
    case 90...100: point = "AA"
    default: point = nil
        
    }
    
    return point
}


do {
    var point = try pointControl(no: 93) // AA
    print(point)
} catch {
    print(error) // Error no!
}
