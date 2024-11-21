//
//  ContentView.swift
//  Kanji_Wars
//
//  Created by 中村樹 on 2024/10/21.
//

import SwiftUI


enum ViewIdentifier: Hashable {
    case ContentView
    case SelectStageView
    case FirstGradeStageView
    
    case SoloGamePlayView
    case OnlineBattleView
    case IllustratedGuideView
    case GachaView
}


struct ContentView: View {
    @State private var path = NavigationPath()
    var body: some View {
        GeometryReader { geometry in
            NavigationStack(path:$path) {
                ZStack {
                    Text("漢字チャンピオン")
                        .font(Font.system(size:100))
                        .position(x:geometry.size.width/2,y:geometry.size.height/2.5)
                    Button(action: {
                        path.append(ViewIdentifier.SelectStageView)
                    }, label: {
                        Text("ひとりで")
                    })
                    .position(x:geometry.size.width/4,y:geometry.size.height/1.5)
                    
                    Button(action: {
                        path.append(ViewIdentifier.OnlineBattleView)
                    }, label: {
                        Text("対戦")
                    })
                    .position(x:geometry.size.width/2.5,y:geometry.size.height/1.5)
                    
                    Button(action: {
                        path.append(ViewIdentifier.IllustratedGuideView)
                    }, label: {
                        Text("漢字図鑑")
                    })
                    .position(x:geometry.size.width/1.7,y:geometry.size.height/1.5)
                }
                .navigationDestination(for: ViewIdentifier.self) { viewID in
                    switch viewID {
                    case .ContentView:
                        ContentView()
                            .navigationBarBackButtonHidden(true)
                    case .SelectStageView:
                        SelectStageView(path: $path)
                            .navigationBarBackButtonHidden(true)
                    case .FirstGradeStageView:
                        FirstGradeStageView(path:$path)
                            .navigationBarBackButtonHidden(true)
                    case .SoloGamePlayView:
                        SoloGamePlayView(path:$path)
                            .navigationBarBackButtonHidden(true)
                    case .OnlineBattleView:
                        OnlineBattleView(path: $path)
                            .navigationBarBackButtonHidden(true)
                    case .IllustratedGuideView:
                        IllustratedGuideView(path: $path)
                            .navigationBarBackButtonHidden(true)
                    case .GachaView:
                        GachaView(path: $path)
                            .navigationBarBackButtonHidden(true)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
