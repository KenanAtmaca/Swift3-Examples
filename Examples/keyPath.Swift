@objc class Person:NSObject {
    
    var name:String!
    var age:Int!
    var gender:String!
    var job:String!
    
    
    init(name:String,age:Int,gender:String,job:String){
        self.name = name
        self.age = age
        self.gender = gender
        self.job = job
    }
    
    func keyPersonName() -> String {
        
        return #keyPath(Person.name)
        
    }
    
}

var obj = Person(name: "Kenan", age: 21, gender: "Male", job: "İOS Developer")
var kpath = #keyPath(Person.name)

print(obj.value(forKey:kpath)!) //  Kenan
obj.name // Kenan

obj.name == obj.value(forKey: kpath) as! String  // True
