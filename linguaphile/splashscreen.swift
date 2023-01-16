//
//  splashscreen.swift
//  linguaphile
//
//  Created by Nouf almandeel on 22/06/1444 AH.
//

import SwiftUI

struct splashscreen: View {
@State private var isActive = false
@State private var size = 0.8
@State private var opacity = 0.5
var body: some View {
if isActive{
    DropdownOption()
}
else{
VStack{
VStack{
Image("logo1")
.resizable()
.scaledToFit()
.frame(width: 150)

            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.2)){
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
        }.frame( maxWidth: .infinity,  maxHeight: .infinity) .background(Color("Color 1"))
            .ignoresSafeArea()
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                withAnimation{
                    self.isActive = true
                    
                }
            }
        }
}
}
}

struct splashscreen_Previews: PreviewProvider {
    static var previews: some View {
        splashscreen()
    }
}
