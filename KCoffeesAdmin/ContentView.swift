//
//  ContentView.swift
//  KCoffeesAdmin
//
//  Created by mohammed sani hassan on 03/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var orderListener = OrderListener()
    
    var body: some View {
        
        NavigationView {
            
            List {
                Section(header: Text("Active Orders")) {
                    
                    ForEach(self.orderListener.activeOrders ?? []) { order in
                        
                        NavigationLink(destination: OrderDetailView(order: order)) {
                            
                            HStack {
                                Text(order.customerName)
                                Spacer()
                                Text("$\(order.amount.clean)")
                            }//End of HStack

                        }//End of Navigation link
                        
                    }//End of for each
                }//End of Section
                
                
                Section(header: Text("Completed Orders")) {
                    ForEach(self.orderListener.completedOrders ?? []) { order in
                        
                        NavigationLink(destination: OrderDetailView(order: order)) {
                            HStack {
                                Text(order.customerName)
                                Spacer()
                                Text("$\(order.amount.clean)")
                            }//End of HStack
                        }//End of Navigation link
                        
                    }//End of for each
                    
                }//End of Section
                
                
            }//End of list
            .navigationBarTitle("Orders")
            
        }//End of Navigation view
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
