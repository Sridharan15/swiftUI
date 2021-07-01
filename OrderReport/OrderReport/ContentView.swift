//
//  ContentView.swift
//  OrderReport
//
//  Created by Sridharan T on 21/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    let orderReport : [OrderReportModel] = [
            .init(salonCode: "0000017466", salonName: "Bedebon pte.ltd.", poNumber: "ODR-2021-06-22-74105", orderDate: "2021/06/22", orderValue: "1,200.00", orderStatus: "Draft"),
            .init(salonCode: "0000017465", salonName: "AVK Probeauty", poNumber: "ODR-2021-06-21-74104", orderDate: "2021/06/21", orderValue: "8,459.00", orderStatus: "Approved"),
            .init(salonCode: "0000017464", salonName: "Chungmong Salon", poNumber: "ODR-2021-06-20-74103", orderDate: "2021/06/20", orderValue: "100.00", orderStatus: "Pending for Approval"),
            .init(salonCode: "0000017463", salonName: "Essensuals north 4", poNumber: "ODR-2021-06-19-74102", orderDate: "2021/06/19", orderValue: "5,000.00", orderStatus: "Rejected"),
            .init(salonCode: "0000017462", salonName: "Essensuals south 4", poNumber: "ODR-2021-06-18-74101", orderDate: "2021/06/18", orderValue: "4,289.00", orderStatus: "Draft"),
            .init(salonCode: "0000017461", salonName: "AZY Hair Salon", poNumber: "ODR-2021-06-17-74100", orderDate: "2021/06/17", orderValue: "1,213.00", orderStatus: "Approved"),
            .init(salonCode: "0000017460", salonName: "West Market Salon", poNumber: "ODR-2021-06-16-74099", orderDate: "2021/06/16", orderValue: "3,876.00", orderStatus: "Draft")
    ]
    
    
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack(spacing:5) {
                Text("Order Report")
                    .fontWeight(.bold)
                    .frame(alignment: .center)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                ZStack {
                    HStack() {
                        Text("Salon")
                            .frame(width: 250, alignment: .leading)
                        Spacer()
                        Text("PO Number")
                            .frame(width: 250, alignment: .center)
                        Spacer()
                        Text("Order Date")
                            .frame(width: 150, alignment: .center)
                        Spacer()
                        Text("Order Value")
                            .frame(width: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Text("Order Status")
                            .frame(width: 150, alignment: .trailing)
                    }
                    .font(.system(size: 23, weight: .bold, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.5066081882, blue: 0.003010747023, alpha: 1)))
                    .padding(15)
                }
                .border(Color.white, width: 1)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60, alignment: .top)
                //Spacer()
                List {
                    ForEach(orderReport) { report in
                        OrderReportCell(orderReport: report)
                    }
                }
                .environment(\.defaultMinListRowHeight, 60)
                
               // Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 1024, height: 768))
    }
}

//MARK:-TableViewCell
struct OrderReportCell: View {
    
    var orderReport: OrderReportModel
    
    init(orderReport: OrderReportModel) {
        UITableView.appearance().backgroundColor = .black
        self.orderReport = orderReport
    }
    
    var body: some View {
        VStack(spacing:15) {
            HStack() {
                VStack(spacing: 5) {
                    Text(orderReport.salonName.uppercased())
                        .frame(width: 250, alignment: .leading)
                    Text(orderReport.salonCode)
                        .frame(width: 250, alignment: .leading)
                }
                Spacer()
                Text("PO:\(orderReport.poNumber)")
                    .frame(width: 250, alignment: .center)
                Spacer()
                Text(orderReport.orderDate)
                    .frame(width: 150, alignment: .center)
                Spacer()
                Text("$\(orderReport.orderValue)")
                    .frame(width: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(orderReport.orderStatus)
                    .frame(width: 175, alignment: .center)

            }
            .font(.system(size: 15, weight: .light, design: .default))
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
            //.listRowBackground(Color.black)
        
            Divider()
                .background(Color.white)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
        .listRowBackground(Color.black)
    }
}

