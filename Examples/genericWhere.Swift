var array:[String] = ["A","B","C","D"]
var array2:[String] = ["3","1","1","5"]

func arrayControl<T>(lhsa:[T],rhsa:[T]) -> Bool where T:Comparable {
    
    return lhsa == rhsa
}

arrayControl(lhsa: array, rhsa: array2)

protocol Container {
    
    associatedtype Item
    mutating func push(item:Item)
    mutating func pop()
    var count:Int {get}
    subscript(i:Int) -> Item {get}
    
}


struct Stack<Element>:Container {
    
    var items = [Element]()
    
    mutating func push(item:Element) {
        items.append(item)
    }
    
    mutating func pop(){
        items.removeLast()
    }
    
    var count:Int {
        return items.count
    }
    
    subscript(i:Int) -> Element {
        return items[i]
    }
}


var stack = Stack<String>()
stack.push(item: "A")
stack.push(item: "B")
stack.push(item: "C")
stack.items // A,B,C
stack.pop() // A,B

var stack2 = Stack<String>()
stack2.push(item: "C")
stack2.push(item: "A")
stack2.push(item: "B")
stack2.items // C,A,B
stack2.pop() // B


func itemsMatch<c1:Container,c2:Container>(_ item1:c1,_ item2:c2) -> Bool  where c1.Item == c2.Item, c1.Item:Equatable , c2.Item:Equatable {
    
    if item1.count != item2.count {
        return false
    }
    
    for i in 0..<item1.count {
        
        if item1[i] != item2[i] {
            return false
        }
    }
    
    return true
}

itemsMatch(stack, stack2) // false
