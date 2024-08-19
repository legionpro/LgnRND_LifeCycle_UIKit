//
//  XViewViewController.swift
//  inittest
//
//  Created by Oleh Poremskyy on 07.08.2024.
//

import UIKit

class xViewController: UIViewController {
    
    var name: String?

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // this is a convenient way to create this view controller without a imageURL
    convenience init() {
        self.init(name: "")
    }
    
    init(name: String) {
        print("xViewController   init(name: String, nibName nibNameOrNil:")
        self.name = name
        super.init(nibName: nil, bundle: nil)
    }
    
    
    // I have a nib. I'd like to use my nib and also initialze the `name` property
    init(name: String, nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle? ) {
        print("xViewController   init(name: String, nibName nibNameOrNil:")
        self.name = name
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }
    
    
    
    // if this view controller is loaded from a storyboard, imageURL will be nil
    
    required init?(coder aDecoder: NSCoder) {
        print("xViewController   init?(coder aDecoder: NSCoder)")
        self.name = ""
        super.init(coder: aDecoder)

    }
    
    
    
    
    
    // when you do storyboard.instantiateViewController(withIdentifier: "ViewController")
    // The SYSTEM WILL call this!
    // because this is its required initializer!
    // but what are you going to do for your `name` property?!
    // are you just going to do `self.name = "default Name" just to make it compile?!
    // Since you can't do anything then it's just best to leave it as `fatalError()`
    
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("I WILL NEVER instantiate through storyboard! It's impossible to initialize super.init?(coder aDecoder: NSCoder) with any other parameter")
//    }
    
    
    override func awakeFromNib() {
        print("xViewController  ------awakeFromNib()")
        super.awakeFromNib()

        
    }

    




        // when you do storyboard.instantiateViewController(withIdentifier: "ViewController")
        // The SYSTEM will never call this!
        // it wants to call the required initializer!

        init?(name: String, coder aDecoder: NSCoder) {
            self.name = "name"
            super.init(coder: aDecoder)
        }


}
