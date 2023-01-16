//
//  DropdownOption.swift
//  linguaphile
//
//  Created by Nouf almandeel on 19/06/1444 AH.
//

import SwiftUI
    
struct DropdownOption: View{
    @State var value = ""
    @State var result = ""
    @State var str = ""
    var placeholder = "Languages"
    var dropDownList = ["Spanish", "English"]
    var body: some View {
        NavigationView {
            
            VStack{
                
                Menu {
                    ForEach(dropDownList, id: \.self){ client in
                        Button(client) {
                            self.value = client
                        }
                    }
                } label: {
                    VStack(spacing: 5){
                        HStack{
                            Text(value.isEmpty ? placeholder : value)
                                .foregroundColor(value.isEmpty ?.gray : .black)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color("green1"))
                                .font(Font.system(size: 20, weight: .bold))
                        }
                        .padding(.horizontal)
                        Rectangle()
                            .fill(Color("green1"))
                        .frame(height: 2)}
                    
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 30, weight: .light))
                        .foregroundColor(.gray)
                }
                
                .padding(20)
                Text("Courses")
                    .foregroundColor(.black)
                    .fontWeight(.light)
                    .font(.system(size: 35, weight: .light))
                    .padding(.trailing, 200.0)
                    .padding(1)
                contentView()
                
                Text("Cateogry")
                    .foregroundColor(.black)
                    .fontWeight(.light)
                    .font(.system(size: 35, weight: .light))
                    .padding(.trailing, 200.0)
                    .padding(1)
                
                ContentView()
                
                
                NavigationLink {
                    testView()
                } label: {
                    Button("Add")
                    {
                        result = str }
                    .foregroundColor(Color(.black))
                    .frame(width: 294, height: 64)
                    .background(Color("light1"))
                    .clipShape(Capsule())
                    .padding()
                }
            }
            
        }
    }
}

struct DropdownOption_Previews: PreviewProvider {
    static var previews: some View {
        DropdownOption()
    }
}
