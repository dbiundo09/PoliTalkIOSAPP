//
//  ContentView.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/11/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var username : String = ""
    @State var password : String = ""
    
    
    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
            VStack {
                Text("Welcome (user_here)!").font(.largeTitle).fontWeight(.bold)
                ImageView
                LogInBox
            }
    }
    
    
    
    var LogInBox : some View {
        Text("Log In: ")
    }
    
    
    var ImageView : some View {
        Image("sample")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
