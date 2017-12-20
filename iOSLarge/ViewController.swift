//
//  ViewController.swift
//  iOSLarge
//
//  Created by Vishal Rana on 12/20/17.
//  Copyright © 2017 Vishal Rana. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationItem.largeTitleDisplayMode = .automatic
        
        navigationItem.hidesSearchBarWhenScrolling = false
        self.title = "Hello big text, For navigation large style bar"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black, NSAttributedStringKey.font : UIFont.preferredFont(forTextStyle: .largeTitle)]
        
        
        for item in(self.navigationController?.navigationBar.subviews)! {
            for sub in item.subviews{
                if sub is UILabel{
                    let titleLab :UILabel = sub as! UILabel
                    titleLab.numberOfLines = 0
                    titleLab.text = self.title
                    titleLab.lineBreakMode = .byWordWrapping
                }
            }
        }
        let index : IndexPath = IndexPath(row: 0, section: 0)
        self.tableView.scrollToRow(at: index, at: .top, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell")!;
        cell.textLabel?.text = "hello"
        return cell
    }

}

