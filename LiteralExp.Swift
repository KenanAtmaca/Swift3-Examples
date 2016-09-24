func funcLogName(fname:String = #function,line:Int = #line , column:Int = #column , file:String = #file) {
    print("Function name = \(fname) , line = \(line) , column = \(column) , filePath = \(file)")
}


func testExpression(x:Int) -> Bool {
    
    print(funcLogName()) // Function name = testExpression(x:) , line = 30 , column = 22 , filePath = /var/folders/mn/wp_4wr7d3v53p8g0d0_qp4l80000gn/T/./lldb/586/playground256.swift
    
    return x > 0 && x % 2 == 0 ? true : false
    
}


testExpression(x: 33)
