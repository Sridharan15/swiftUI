//
//  OrderReportModel.swift
//  OrderReport
//
//  Created by Sridharan T on 22/06/2021.
//

import Foundation

struct OrderReportModel: Identifiable {
    var id         = UUID()
    var salonCode  : String
    var salonName  : String
    var poNumber   : String
    var orderDate  : String
    var orderValue : String
    var orderStatus: String
    
    init(salonCode: String, salonName: String, poNumber: String, orderDate: String, orderValue: String, orderStatus: String) {
        self.salonCode   = salonCode
        self.salonName   = salonName
        self.poNumber    = poNumber
        self.orderDate   = orderDate
        self.orderValue  = orderValue
        self.orderStatus = orderStatus
    }
}
