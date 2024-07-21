//
//  RootViewController.swift
//  R&D_LifeCyle_swift
//
//  Created by Oleh Poremskyy on 01.04.2024.
//

import UIKit

class RootViewController: UIViewController {
    
    override init(nibName: String?, bundle: Bundle?) {
        super.init(nibName: nibName, bundle: bundle)
        DebugPrint.debugPrint()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        DebugPrint.debugPrint()
    }

    override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
    }

    
    override func loadView() {
        super.loadView()
        DebugPrint.debugPrint()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        DebugPrint.debugPrint()
    }
    
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing( animated )
        DebugPrint.debugPrint()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear( animated )
        DebugPrint.debugPrint()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear( animated )
        DebugPrint.debugPrint()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear( animated )
        DebugPrint.debugPrint()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear( animated )
        DebugPrint.debugPrint()
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

extension RootViewController {
    override func viewLayoutMarginsDidChange() {
        super.viewLayoutMarginsDidChange()
        DebugPrint.debugPrint()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        DebugPrint.debugPrint()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        DebugPrint.debugPrint()
    }
    override func updateViewConstraints() {
       super.updateViewConstraints()
       DebugPrint.debugPrint()
   }

}

extension RootViewController {
    
    override func addChild(_ childController: UIViewController) {
        super.addChild( childController )
        DebugPrint.debugPrint()
    }

    override func removeFromParent() {
        super.removeFromParent()
        DebugPrint.debugPrint()
    }

    override func willMove(toParent parent: UIViewController?) {
        super.willMove(toParent: parent)
        DebugPrint.debugPrint()
    }
    
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent )
        DebugPrint.debugPrint()
    }
}


extension RootViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        DebugPrint.debugPrint()
    }
    
    override func performSegue(withIdentifier: String, sender: Any?) {
        super.performSegue(withIdentifier: withIdentifier, sender: sender)
        DebugPrint.debugPrint()
    }

    
    override func unwind(for segue: UIStoryboardSegue, towards: UIViewController) {
        super.unwind(for: segue, towards: towards)
        DebugPrint.debugPrint()
    }
}
