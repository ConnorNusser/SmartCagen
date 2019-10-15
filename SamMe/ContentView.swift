//
//  ContentView.swift
//  SamMe
//
//  Created by Connor Mclemore on 10/10/19.
//  Copyright © 2019 ByteMe. All rights reserved.
//

import SwiftUI
import Swift
import Firebase
import FirebaseDatabase
let ref = Database.database().reference()




struct ContentView: View {


    
    var body: some View {
        
        
        
        VStack {
        

            DogLogo()
                .offset(y: CGFloat(-40))
            Text("ByteMe").font(.largeTitle)
                .offset(y: CGFloat(0))
            
        
        Button(action:{
            ref.child("Gpio/Port").setValue("FoodSet")
            sleep(5)
            ref.child("Gpio/Port").setValue("None")
            
        }){
            HStack {
            Spacer()
            Text("Dispense")
                .accentColor(.white)
            Spacer()
                
            }
            
        }
        .frame(height: 56)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.blue)
        .padding(.vertical, 16)
        .cornerRadius(75)
        .offset(y:CGFloat(15))
        .padding(.horizontal, 16)
            
        
        Button(action:{
            ref.child("Gpio/Port").setValue("Monitor")
            sleep(5)
            ref.child("Gpio/Port").setValue("None")
            
            
        }){
            HStack {
            Spacer()
            Text("Monitor")
                .accentColor(.white)
            Spacer()
                
            }
            
        }
        .frame(height: 56)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.blue)
        .padding(.vertical, 16)
        .cornerRadius(75)
        .offset(y:CGFloat(15))
        .padding(.horizontal, 16)
        
    
        Button(action:{
            ref.child("Gpio/Port").setValue("Daddy Hansen")
            sleep(5)
            ref.child("Gpio/Port").setValue("None")
            
        }){
            HStack {
            Spacer()
            Text("Settings")
                .accentColor(.white)
            Spacer()
                
            }
            
        }
        .frame(height: 56)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.blue)
        .padding(.vertical, 16)
        .cornerRadius(75)
        .offset(y:CGFloat(15))
        .padding(.horizontal, 16)
        
                }
        
        
        
        
}
    
}

struct DetailView: View{
    var body: some View{
        NavigationView{
            Text("Text Inside")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

