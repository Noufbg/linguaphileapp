//
//  ContentView.swift
//  linguaphile
//
//  Created by Nouf almandeel on 18/06/1444 AH.
//

import SwiftUI

struct Box: Hashable {
    
    let imageURL : String
    
}
        struct ContentView: View {
            
            
            let boxes : [Box] = [
                Box(imageURL: "222"),
                Box(imageURL: "333"),
                Box(imageURL: "444"),
                Box(imageURL: "555"),
                Box(imageURL: "666")
            ]
            var body: some View {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false ){
                        HStack(spacing : -220 ){
                            ForEach(boxes, id: \.self) { box in
                                GeometryReader { geometry in
                                    
                                    Button(action: {}, label: {
                                        (Image(box.imageURL))//image
                                            .resizable()
                                            .frame(width: 180, height: 200)
                                            .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX)  / -9), axis: (x:0, y: 30.0, z: 0))
                                        
                                    })//action
                                    
                                }//geomatryreader
                                
                            }.frame(width: 390, height: 190.0)
                            
                            
                        } .padding(.bottom)
                    }
                    
                }
                .padding()
            }
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
    
