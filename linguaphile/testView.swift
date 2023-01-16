//
//  testView.swift
//  linguaphile
//
//  Created by Nouf almandeel on 19/06/1444 AH.
//

import SwiftUI

struct testView: View {
    
    @State var str = ""
    @State var result = ""
    var body: some View {
        NavigationView {
            
            
            VStack{
                
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
                
                
                Text("Translate these phases to english")
                    .foregroundColor(Color.black)
                    .font(.system(size : 30))
                    .bold()
                    .padding(.trailing, 80.0)
                
                VStack{
                    
                    Text(result)
                        .foregroundColor(.black)
                        .padding(100)
                        .background(RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(Color("pink1"))
                            .frame(width: 340, height: 216))
                    
                    
                    VStack{
                        TextField("", text: $str)
                            .padding(100)
                            .background(RoundedRectangle(cornerRadius: 40)
                                .foregroundColor(Color("pink1"))
                                .frame(width: 340, height: 120))
                    }
                    
                    .padding()
                    
                    Button("save")
                    {
                        result = str}
                    .foregroundColor(.black)
                    .background(RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(Color("light1"))
                        .frame(width: 294, height: 64))
                    .padding()
                    
                    
                    
                }
                
            }
        }
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
