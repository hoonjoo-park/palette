//
//  ColorsTable_VC.swift
//  palette
//
//  Created by Hoonjoo Park on 2022/10/29.
//

import UIKit

class ColorsTable_VC: UIViewController {
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    enum Segues {
        static let toColorDetail = "ToColorDetail"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appendRandomColors()
    }
    
    func appendRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorDetail_VC
        destinationVC.color = sender as? UIColor
    }

}

extension ColorsTable_VC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell)
        let color = colors[indexPath.row]
        
        cell?.backgroundColor = color
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        
        performSegue(withIdentifier: Segues.toColorDetail, sender: color)
    }
}
