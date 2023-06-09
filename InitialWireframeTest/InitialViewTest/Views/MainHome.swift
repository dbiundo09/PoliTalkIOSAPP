//
//  MainHome.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/12/23.
//

import SwiftUI

struct MainHome: View {
    @Binding var currentView : ViewChooser
    @State var currentSupport : Int = 55
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.horizontal) {
                    HStack {
                        VStack {
                            Text("Ed Markey").font(.largeTitle)
                            Image("markeyy").resizable().aspectRatio(contentMode: .fit).frame(width:300, height: 400)
                            Text("Voted with you: \(currentSupport)% of the time").foregroundColor(.green).fontWeight(.heavy)
                            Text("Voted against you: \(100-currentSupport)% of the time").foregroundColor(.red).fontWeight(.heavy)
                        }.clipped()
                        .padding(.bottom)
                        Spacer()
                        VStack {
                            Text("Elizabeth Warren").font(.largeTitle)
                            Image("warren").resizable().aspectRatio(contentMode: .fit)
                            Text("Voted with you: \(currentSupport)% of the time").foregroundColor(.green).fontWeight(.heavy)
                            Text("Voted against you: \(100-currentSupport)% of the time").foregroundColor(.red).fontWeight(.heavy)
                        }.clipped()
                    }
                }.toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                        currentView = .LogIn
                        } label:
                        {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                        }
                    }
                }
            }
            ScrollView(.horizontal) {
                HStack{
                    VStack {
                        Image("AOC2")
                        Text("Green New Deal")
                    }
                    VStack {
                        Image("AOC2")
                        Text("Green New Deal")
                    }
                    
                }.onTapGesture {
                    currentView = .BillView
                }
            }
            
        }
    }
}



//struct MainHome_Previews: PreviewProvider {
//    static var previews: some View {
//        MainHome()
//    }
//}
