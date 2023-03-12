//
//  SignUpView.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/11/23.
//

import SwiftUI

struct SignUpView: View {
    @State var stepper : Int = 0
    var body: some View {
        VStack {
            form
        }.fullScreenBackground(Image("background"))
    }
    
    var form : some View {
        return NavigationView {
            Form {
                Section("Information") {
                    Stepper("Age: \(stepper)", value: $stepper, in: 0...100, step: 1)
                }
                
            }
        }
    }
    
    
    
    
}

























struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
