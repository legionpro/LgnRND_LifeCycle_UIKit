//
//  MainViewController.swift
//  R&D_LifeCyle_swift
//
//  Created by Oleh Poremskyy on 01.04.2024.
//

import UIKit

class MainViewController: RootViewController {

    @IBOutlet weak var childVC: UIView!
    @IBOutlet weak var ssubView: XView!
    @IBOutlet weak var button: UIButton!

    init() {
        DebugPrint.debugPrint(flag: DebugPrint.printFlagB)
        super.init(nibName: nil, bundle: nil)
    }
    
    
    // I have a nib. I'd like to use my nib and also initialze the `name` property
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle? ) {
        DebugPrint.debugPrint(flag: DebugPrint.printFlagB)
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }
    
    
    
    // if this view controller is loaded from a storyboard, imageURL will be nil
    
    required init?(coder aDecoder: NSCoder) {
        DebugPrint.debugPrint(flag: DebugPrint.printFlagB)
        super.init(coder: aDecoder)

    }
    
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("I WILL NEVER instantiate through storyboard! It's impossible to initialize super.init?(coder aDecoder: NSCoder) with any other parameter")
//    }
    
    
    override func awakeFromNib() {
        DebugPrint.debugPrint(flag: DebugPrint.printFlagB)
        super.awakeFromNib()
    }
    
    @IBAction func gotToVCFromXib(_ sender: Any) {
        let vc = XibViewController()
        self.present(vc, animated: true, completion: nil)
    }

override func loadViewIfNeeded() {
    super.loadViewIfNeeded()
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)
}


override func loadView() {
    super.loadView()
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)
}

override func viewDidLoad() {
    super.viewDidLoad()
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)
}

override func viewIsAppearing(_ animated: Bool) {
    super.viewIsAppearing( animated )
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)
}

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear( animated )
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)
}

override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear( animated )
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)
}

override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear( animated )
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)
}

override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear( animated )
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)
}


///   Cannot override 'viewWillUnload' which has been marked unavailable: APIs deprecated as of iOS 7 and earlier are unavailable in Swift
//
//    override func viewWillUnload() {
//
//    }
//
//    override func viewDidUnload() {
//
//    }
}

extension MainViewController {
override func viewLayoutMarginsDidChange() {
    super.viewLayoutMarginsDidChange()
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }

override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }

override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }
override func updateViewConstraints() {
   super.updateViewConstraints()
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)   }

}

extension MainViewController {

override func addChild(_ childController: UIViewController) {
    super.addChild( childController )
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }

override func removeFromParent() {
    super.removeFromParent()
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }

override func willMove(toParent parent: UIViewController?) {
    super.willMove(toParent: parent)
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }

override func didMove(toParent parent: UIViewController?) {
    super.didMove(toParent: parent )
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }
}


extension MainViewController {

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }

override func performSegue(withIdentifier: String, sender: Any?) {
    super.performSegue(withIdentifier: withIdentifier, sender: sender)
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }


override func unwind(for segue: UIStoryboardSegue, towards: UIViewController) {
    super.unwind(for: segue, towards: towards)
    DebugPrint.debugPrint(flag: DebugPrint.printFlagA)    }
}
