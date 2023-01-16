//
//  backgroundView.swift
//  linguaphile
//
//  Created by Nouf almandeel on 22/06/1444 AH.
//

import SwiftUI

struct backgroundView: View {
    var body: some View {
        
        GeometryReader { geo in
            ZStack{
                Image ("bg1")
                    .resizable ()
                    .scaledToFill ()
                    .edgesIgnoringSafeArea (.all)
                    .frame (width: geo.size.width, height:
                                geo.size.height, alignment:.center)
                    .opacity (1.0)
            }
        }
        
        
    }
}
                struct backgroundView_Previews: PreviewProvider {
                    static var previews: some View {
                        backgroundView()
                    }
                }
            
    
