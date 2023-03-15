//
//  SignUpView.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/11/23.
//

import SwiftUI

struct SignUpView: View {
    @Binding var currentView : ViewChooser
    @State var age : Int = 0
    @State var name : String = ""
    @State var zip : String = ""
    @State var email : String = ""
    var body: some View {
        VStack {
            form
        }.fullScreenBackground(Image("background"))
    }
    
    var form : some View {
        return NavigationStack {
            Form {
                Section("Information") {
                    TextField("Zip", text: $zip)
                    TextField("Name", text: $name)
                    TextField("Email", text: $email)
                    Picker("Age", selection: $age) {
                        ForEach(0 ..< 100) { number in
                            Text("\(number)")
                        }
                    }
                    
                }
                
            }
            Button("Submit") {
                currentView = ViewChooser.MainHome
            }

        }
    }
    
    
    
    
}

























//struct SignUpView_Previews: PreviewProvider {
//    @State var view : ViewChooser = .SignUp
//    static var previews: some View {
//        SignUpView(currentView: $view)
//    }
//}
