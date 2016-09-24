var completions:[() -> Void] = []

func testEscaping(completion: @escaping ()->Void) {
    
    completions.append(completion)
    print(completions.count) // 2
    
}

testEscaping {
    print("Hello!")
}

testEscaping {
    print("Byee!")
}
