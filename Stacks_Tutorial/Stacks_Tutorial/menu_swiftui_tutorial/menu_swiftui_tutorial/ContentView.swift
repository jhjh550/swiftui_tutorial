//
//  ContentView.swift
//  menu_swiftui_tutorial
//
//  Created by mac on 2021/05/04.
//

import SwiftUI

let myPets =  ["λ©λ©μ΄ πΆ", "μΌμΉμ΄ π―", "μ°μ°μ΄ πΉ"]

struct ContentView: View {
    
    @State private var shouldShowAlert = false
    @State private var myText = ""
    @State private var selected = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing:20){
                Spacer()
                Text("\(myPets[selected])")
                    .font(.system(size:60))
                    .fontWeight(.bold)
                Text("μ°μΈ‘ μλ¨μ λ²νΌμ λλ¬μ£ΌμΈμ.")
                Spacer()
                Spacer()
            }
            
                .padding()
                .navigationTitle("νμ΄μ")
                .toolbar(content: {
                    ToolbarItem(placement: .primaryAction, content: {
                        Menu(content: {
                            Button(action: {
                                print("μ€λμ μ¬λλ  ν΄λ¦­")
                                shouldShowAlert = true
                                myText = "μ€λμ μ¬λλ "
                            }, label: {
                                Label("μ€λμ μ¬λλ ", systemImage: "house.fill")
                            })
                            Section{
                                // λ©ν° νΈλ μΌλ§ ν΄λ‘μ Έ
                                Button{
                                    print("μ€λλ λΉ‘μ½λ© λ²νΌ ν΄λ¦­")
                                    shouldShowAlert = true
                                    myText = "μ€λλ λΉ‘μ½λ©~"
                                } label : {
                                    Label("μ€λλ λΉ‘μ½λ©~", systemImage: "flame.fill")
                                }
                            }
                            Picker(selection: $selected, label: Text("μ μλλ¬Ό μ ν"), content: {
                                ForEach(myPets.indices, id:\.self, content:{ index in
                                    Text("\(myPets[index])").tag(index)
                                })
                            })
                            
                        }, label: {
//                            Text("hello world")
//                            Image(systemName: "ellipsis")
                            Circle().foregroundColor(Color.init(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                                .frame(width:50, height: 50)
                                .overlay(
                                    Label("λλ³΄κΈ°", systemImage: "ellipsis")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                )
                            
                        })
                    })
                })
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("μλ¦Ό"), message: Text("\(myText)"), dismissButton: .default(Text("νμΈ")))
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
