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
        DebugPrint.debugPrint(flag: DebugPrint.printFlagB)
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        DebugPrint.debugPrint(flag: DebugPrint.printFlagB)
        super.init(coder: coder)
        commonInit()
    }
    
    
    private func commonInit() {
      Bundle.main.loadNibNamed("XView", owner: self, options: nil)
      addSubview(contentView)
      contentView.frame = bounds
      contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    
    override func awakeFromNib() {
        DebugPrint.debugPrint(flag: DebugPrint.printFlagB)
        super.awakeFromNib()
    }
}
