var Arr:[Int] = [3,1,22,4,5]

var evenArr = Arr.filter {$0 % 2 == 0}
evenArr // 22,4

var arrSort = Arr.sorted{s1,s2 in s1 > s2}
arrSort // 22,5,4,3,1

var arr2x = Arr.map {$0 * 2}
arr2x // 6,2,44,8,10

var a = (Arr.map {$0 * 2}.sorted{$0 < $1}.filter{$0 > 5})
a // 6,8,10,44

Arr.reduce(0, +) // 35
Arr.reduce(1, *) // 1320

var optArr:[Int?] = [2,3,nil,1,6,nil,2]
var arr = optArr.flatMap {$0}
arr // 2,3,1,6,2


var multiArr:[[Int]] = [[1,2],[156,114],[9,23]]
var mResult = multiArr.flatMap {$0}
mResult // 1,2,156,114,9,23


var strArr:[String] = ["Ankara","New York","Istanbul","Moskow","Baku","Berlin","Doha"]

var countArr = strArr.filter {$0.characters.count > 6}
countArr // New York,Istanbul

var c = strArr.filter {$0.characters.first == "N"}.count
c // 1

var srtArr = strArr.filter {$0.characters.last == "a"}.sorted {$0 > $1}
srtArr // Doha,Ankara
