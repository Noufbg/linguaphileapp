//
//  contentView.swift
//  linguaphile
//
//  Created by Nouf almandeel on 21/06/1444 AH.
//

import SwiftUI

struct contentView: View {
    var body: some View {
        Flashcard(spanish: {
            Text ("Spanish")
        }, english:{
            Text ("English")
        })
    }
    
    
    struct Flashcard<Spanish, English>: View where Spanish: View, English: View {
        var spanish: () -> Spanish
        var english: () -> English
        
        @State var flipped: Bool = false
        
        @State var flashcardRotation = 0.0
        @State var contentRotation = 0.0
        
        init(@ViewBuilder spanish: @escaping () -> Spanish, @ViewBuilder english: @escaping () -> English) {
            self.spanish = spanish
            self.english = english
        }
        
        var body: some View {
            ZStack {
                if flipped {
                    spanish()
                } else {
                    english()
                }
            }
            .rotation3DEffect(.degrees(contentRotation), axis: (x: 0, y: 1, z: 0))
            .padding()
            .frame(height: 200)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .overlay(
                Rectangle()
                    .fill(Color("light1"))
                    .cornerRadius(20)
                    
            )
            .padding()
            .onTapGesture {
                flipFlashcard()
            }
            .rotation3DEffect(.degrees(flashcardRotation), axis: (x: 0, y: 1, z: 0))
        }
        
        func flipFlashcard() {
            let animationTime = 0.5
            withAnimation(Animation.linear(duration: animationTime)) {
                flashcardRotation += 180
            }
            
            withAnimation(Animation.linear(duration: 0.001).delay(animationTime / 2)) {
                contentRotation += 180
                flipped.toggle()
            }
        }
    }
    
    struct contentView_Previews: PreviewProvider {
        static var previews: some View {
            contentView()
        }
    }
}
