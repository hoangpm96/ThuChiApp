//
//  Expense.swift
//  ThuChiApp
//
//  Created by HoangPhan on 2/21/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import Foundation
class Expense{
    private var _detail :String
    private var _money: Double
    private var _category: String
    private var _bankAccount: String
    
    var detail: String{
        get{
        return _detail
        }
        set{
            _detail = newValue
        }
    }
    var money: Double{
        get{
        return _money
        }
        set {
        _money = newValue
        }
    }
    var category: String {
        get {
        return _category
        }
        set {
        _category = newValue
        }
    }
    
    var bankAccount: String {
        get {
        return _bankAccount
        }
        set {
        _bankAccount = newValue
        }
        
    }
    init(_detail: String, _money: Double, _category: String, _bankAccount: String) {
        self._detail = _detail
        self._money = _money
        self._category = _category
        self._bankAccount = _bankAccount
    }
}
