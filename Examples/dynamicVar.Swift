import UIKit
import CoreGraphics
import CoreImage



class Test:NSObject {
    dynamic var name:String!
}

var mycontext:Int = 0

class dynamicTest: UIViewController {
    
    @IBOutlet weak var imgview: UIImageView!
    
    var obj:Test!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        obj = Test()
        
        obj.addObserver(self, forKeyPath: #keyPath(Test.name), options: .new, context: &mycontext)
        
        
        
        imgview.image = UIImage(named: "f.jpg")
        
        
        
    }
    
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if context == &mycontext {
            print("tetiklendi")
        }
        
        
    }
    
    
    @IBAction func createGif(_ sender: AnyObject) {
        obj.name = "Kenan"
        
        
    }
    
    
    
}//
