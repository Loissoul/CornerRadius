//
//  ViewController.swift
//  CornerRadius
//
//  Created by Lois_soul on 16/2/27.
//  Copyright © 2016年 Lois_soul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let table = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main().bounds.size.width, height: UIScreen.main().bounds.size.height))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        
        view.addSubview(table)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "tableviewcell"
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: identifier)
        let cell = table.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? CustomTableViewCell

        cell?.selectionStyle = .none
        cell?.setupContent(imgName: "photo")
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
}

