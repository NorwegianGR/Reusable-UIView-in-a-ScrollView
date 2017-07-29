//
//  DesignableXibView.swift
//  ReusableUIView
//
//  Created by Panagiotis Siapkaras on 7/29/17.
//  Copyright © 2017 Panagiotis Siapkaras. All rights reserved.
//

import UIKit

class DesignableXibView: UIView {

    var contentView : UIView!
    
    @IBOutlet weak var testLabel: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func xibSetup(){
        
        contentView = loadViewFromNib()
        
        //use bounds not frame or it will be offset
        contentView.frame = bounds
        
        //Make the view strect with containing view
        contentView!.autoresizingMask = [UIViewAutoresizing.flexibleWidth,UIViewAutoresizing.flexibleHeight]
        //adding custom subview on top of our view(over any custom drawing ->see note below)
        addSubview(contentView!)
    }
    
    func loadViewFromNib() -> UIView!{
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
