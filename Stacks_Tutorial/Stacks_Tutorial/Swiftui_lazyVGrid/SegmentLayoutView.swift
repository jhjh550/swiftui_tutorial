//
//  SegmentLayoutView.swift
//  Swiftui_lazyVGrid
//
//  Created by mac on 2021/05/05.
//

import Foundation
import SwiftUI

enum LayoutType: CaseIterable{
    case table, grid, multiple
}
extension LayoutType{
    // 레이아웃 타입에 대한 컬럼이 자동으로 설정되게 한다.
    var columns: [GridItem]{
        switch self {
        case .table:
            // flexible 하나로 한줄로 표현
            return [GridItem(.flexible())]
        case .grid:
            // flexible 두개로 한줄로 표현
            return [GridItem(.flexible()), GridItem(.flexible())]
        case .multiple:
            return [GridItem(.adaptive(minimum: 100))]
        }
    }
}
struct SegmentLayoutView: View {
    
    var dummyDatas = MyModel.dummyDataArray
    
    @State var selectedLayoutType: LayoutType = .grid
    var body: some View{
        VStack{
            Picker(selection: $selectedLayoutType, label: Text("레이아웃 타입"), content: {
                ForEach(LayoutType.allCases, id:\.self, content:{ layoutType in
                    switch layoutType{
                    case .table:
                        Image(systemName: "list.dash")
                    case .grid:
                        Image(systemName: "square.grid.2x2.fill")
                    case .multiple:
                        Image(systemName: "circle.grid.3x3.fill")
                    }
                })
            })
            .frame(width:250)
            .pickerStyle(SegmentedPickerStyle())
            
            ScrollView{
                LazyVGrid(columns: selectedLayoutType.columns, content: {
                    ForEach(dummyDatas){ dataItem in
                        switch selectedLayoutType{
                        case .table:
                            Rectangle().frame(height:100).foregroundColor(.blue)
                        case .grid:
                            // todo : 아래 foregroundColor 와 frame 바꾸는게 이리 큰 차이를 만드나????
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.7268135548, green: 0.4234779179, blue: 0.6361876726, alpha: 1)))
                                .frame(height:200)
                                .overlay(
                                    VStack(spacing:2){
                                        Circle().frame(height:100).foregroundColor(.yellow)
                                        Spacer().frame(height:10)
                                        Text("\(dataItem.title)").font(.system(size: 20))
                                            .fontWeight(.bold)
                                        Text("\(dataItem.content)")
                                })
                        case .multiple:
                            Rectangle().frame(height:100).foregroundColor(.green)
                        }
                        
                    }
                })
                .animation(.default)
                .padding(.horizontal, 10)
            }
            
        }
    }
}

struct SegmentLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentLayoutView()
    }
}
