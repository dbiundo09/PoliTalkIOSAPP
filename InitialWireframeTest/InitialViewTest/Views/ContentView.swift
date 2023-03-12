//
//  ContentView.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/11/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var currentView : ViewChooser = .LogIn
    
    var body : some View {
        if (currentView == .LogIn) {
            LogInView(currentView: $currentView)
        } else if (currentView == .SignUp) {
            SignUpView()
        } else {
            withAnimation {
                Rectangle().onTapGesture {
                    currentView = .LogIn
                }
            }
        }
       
    }

    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
       
        static var previews: some View {
            let constantClass = tempUserInfoStore(firstName: "Dan", lastName: "Biundo", age: 20, email: "biundo@bc.edu")
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            ContentView()
                .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
                .preferredColorScheme(.dark)
            
        }
    }
}
