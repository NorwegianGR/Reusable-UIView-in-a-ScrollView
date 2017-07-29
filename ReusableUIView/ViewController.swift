//
//  ViewController.swift
//  ReusableUIView
//
//  Created by Panagiotis Siapkaras on 7/29/17.
//  Copyright © 2017 Panagiotis Siapkaras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let scrollCellXib = UINib(nibName: "scrollCell", bundle: nil)
        tableView.register(scrollCellXib, forCellReuseIdentifier: "ScrollCell")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScrollCell", for: indexPath) as! TableViewCell
        cell.setupScrollView()
        return cell
        
    }
}

