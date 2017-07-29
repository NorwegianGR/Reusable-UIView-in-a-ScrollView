//
//  TableViewCell.swift
//  ReusableUIView
//
//  Created by Panagiotis Siapkaras on 7/29/17.
//  Copyright © 2017 Panagiotis Siapkaras. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var scrollView: UIScrollView!
    override func awakeFromNib() {
        super.awakeFromNib()
       scrollView.backgroundColor = UIColor(patternImage: UIImage(named: "patternImage")!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupScrollView(){
        let marginX : CGFloat = 15
        let originY : CGFloat = 10
        let viewWidth : CGFloat = 60
        let viewHeight : CGFloat = 60
        var padding : CGFloat = 0
        
        for i in 0...10{
            
            let aView = DesignableXibView(frame: CGRect(x: marginX + padding + 15, y: originY , width: viewWidth, height: viewHeight))
            aView.testLabel.text = "\(i)"
            scrollView.addSubview(aView)
            padding += 15 + viewWidth
            
        }
        
        scrollView.contentSize = CGSize(width: padding + 15, height: scrollView.bounds.size.height)
        
    }

}
