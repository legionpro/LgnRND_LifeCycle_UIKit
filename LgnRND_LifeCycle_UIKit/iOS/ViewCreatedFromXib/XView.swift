//
//  XView.swift
//  inittest
//
//  Created by Oleh Poremskyy on 07.08.2024.
//

import UIKit

class XView: UIView {

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var xviewlabel: UILabel!
    
    
    override init(frame: CGRect) {
        print("xview - init(frame: CGRect)")
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        print("xview - init?(coder: NSCoder)")
        super.init(coder: coder)
        commonInit()
    }
    
    
    private func commonInit() {
      Bundle.main.loadNibNamed("XView", owner: self, options: nil)
      addSubview(contentView)
      contentView.frame = bounds
      contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

}
