//
//  ContentView.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/11/23.
//

import SwiftUI
import CoreData


struct LogInView: View {
    @State var username : String = ""
    @State var password : String = ""
    @Binding var currentView : ViewChooser
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Welcome Back Gabe!").font(.largeTitle.bold())
                ImageView.transition(.scale)
                    .padding(.bottom, -8.0)
                LogInBox.frame(width:geometry.size.width * 0.5)
                    .padding(.top, -14.0)
                HStack {
                    submitButton
                    createAccount
                }
                
                
            }.fullScreenBackground(Image("background"))
        }
        
    }
    
    
    var LogInBox : some View {
        
            VStack{
                TextField("Username", text: $username)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
            }
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
    
    var submitButton : some View {
        Button("Sign In") {
            currentView = .MainHome
        }.buttonStyle(.borderedProminent)
    }
    
    var createAccount : some View {
        Button("Sign up") {
            currentView = .SignUp
        }.buttonStyle(.borderedProminent)
        
    }
    

    
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView(model:).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//            ContentView()
//                .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//                .preferredColorScheme(.dark)
//
//        }
//    }
}
