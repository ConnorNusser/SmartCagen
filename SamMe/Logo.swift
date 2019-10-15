//
//  SwiftUIView.swift
//  SamMe
//
//  Created by Connor Mclemore on 10/11/19.
//  Copyright © 2019 ByteMe. All rights reserved.
//


import SwiftUI

struct DogLogo: View {
    var body: some View {
        Image("200x200dog")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        DogLogo()
    }
}
