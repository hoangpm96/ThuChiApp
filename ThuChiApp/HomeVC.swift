//
//  ViewController.swift
//  ThuChiApp
//
//  Created by HoangPhan on 2/21/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import UIKit

class HomeVC: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
var expenseList = [Expense]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let expense1 = Expense(_detail: "Học hành", _money: 25000, _category: "Mua sách", _bankAccount: "Tiền mặt")
        let expense2 = Expense(_detail: "Học hành", _money: 15000, _category: "photo sách", _bankAccount: "Tiền mặt")
        let expense3 = Expense(_detail: "Sinh hoạt", _money: 105000, _category: "Mua bàn", _bankAccount: "ATM")
        let expense4 = Expense(_detail: "Ăn uống", _money: 20000, _category: "Ăn cơm", _bankAccount: "Tiền mặt")
        expenseList.append(contentsOf: [expense1, expense2, expense3, expense4])
        //tableView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
extension HomeVC: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenseList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoneyCell", for: indexPath) as! ExpenseCell
        cell.updateCell(cell: expenseList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let viewHeader = UIView()
        viewHeader.backgroundColor = UIColor.red
        return viewHeader
    }
}
