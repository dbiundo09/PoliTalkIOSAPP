//
//  BillView.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/12/23.
//

import SwiftUI

struct BillView: View {
    @Binding var currentView : ViewChooser
    @State var billName : String = "Petition for Green New Deal"
    @State var currentSupport : Int = 99
    @State var image : Image = Image("AOC2")
    
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    Text(billName).font(.title2).fontWeight(.bold).padding(.top)
                    image
                    HStack {
                        Text("For: \(currentSupport)").foregroundColor(.green).fontWeight(.heavy)
                        Text("Against: \(100-currentSupport)").foregroundColor(.red).fontWeight(.heavy)
                    }
                }.padding(.bottom)
            }
            Text("The Green New Deal is a congressional resolution that lays out a grand plan for tackling climate change. Introduced by Representative Alexandria Ocasio-Cortez of New York and Senator Edward J. Markey of Massachusetts, both Democrats, the proposal calls on the federal government to wean the United States from fossil fuels and curb planet-warming greenhouse gas emissions across the economy. It also aims to guarantee new high-paying jobs in clean energy industries. ")
        }.toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    currentView = .MainHome
                } label: {
                    Image("arrowshape.turn.up.backward.circle")
                }
            }
        }

        
    }
    
    @ViewBuilder
    func getSmallBillView() -> some View {
        VStack {
            ZStack {
                Rectangle().foregroundColor(.gray)
                VStack {
                    Text(billName).font(.title2).fontWeight(.bold).padding(.top)
                    image
                    HStack {
                        Text("For: \(currentSupport)").foregroundColor(.green).fontWeight(.heavy)
                        Text("Against: \(100-currentSupport)").foregroundColor(.red).fontWeight(.heavy)
                    }
                }.padding(.bottom)
            }
        }
        
        
        
    }
}
//
//struct BillView_Previews: PreviewProvider {
//    static var previews: some View {
//        BillView()
//    }
//}
