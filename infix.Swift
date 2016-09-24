struct Point {
    
    var x:Float
    var y:Float
    
}


infix operator <>

extension Point {
    
    static func + (lhs:Point,rhs:Point) -> Point {
        
        return Point(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
        
    }
    
    static func - (lhs:Point,rhs:Point) -> Point {
        
        return Point(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
        
    }
    
    static func > (lhs:Point,rhs:Point) -> Bool {
        
        return lhs.x > rhs.x && lhs.y > rhs.y
        
    }
    
    static func <> (lhs:Point,rhs:Point) -> Bool {
        
        return lhs.x == rhs.x && lhs.y == rhs.y
        
    }
    
}

var pointObj = Point(x: 2.1, y: 4.2)
var obj = Point(x: 1.2, y: 2.5)

pointObj <> obj // false

pointObj > obj // true

var p = pointObj + obj

p.x // 3.3
p.y // 6.7
