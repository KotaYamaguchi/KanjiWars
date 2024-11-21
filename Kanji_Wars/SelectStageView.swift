//
//  selectStageView.swift
//  Kanji_Wars
//
//  Created by 中村樹 on 2024/10/21.
//

import SwiftUI

struct SelectStageView: View {
    @Binding var path: NavigationPath
    @State var gradeNumber:Int = 0
    @State var clearStageCount = 0
    @State var getStarCount = 0
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Button(action: {
                    path.removeLast(path.count)
                }, label: {
                    Text("戻る")
                })
                .position(x:geometry.size.width/10,y:geometry.size.height/12)
                Text("ステージ選択")
                    .font(Font.system(size:50))
                    .position(x:geometry.size.width/2,y:geometry.size.height/5)
                
                ForEach(1..<7) { i in
                    let Xcoordinate = i % 2 == 0 ? 1.5 : 3
                    let Ycoordinate = (i <= 2) ? 3.0 : (i <= 4) ? 2.0 : 1.5
                    Button(action: {
                        gradeNumber = i
                        path.append(ViewIdentifier.FirstGradeStageView)
                    }, label: {
                        Text("小学\(i)年生")
                            .font(Font.system(size: 30))
                    })
                    .position(x:geometry.size.width/Xcoordinate,y:geometry.size.height/Ycoordinate)
                }
            }
        }
    }
}

//#Preview {
//    SelectStageView()
//}
