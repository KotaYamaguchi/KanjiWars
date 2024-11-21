//
//  SoloGamePlayView.swift
//  Kanji_Wars
//
//  Created by 中村樹 on 2024/10/21.
//

import SwiftUI

struct SoloGamePlayView: View {
    @Binding var path: NavigationPath
    var body: some View {
        GeometryReader { geometry in
            Text("SoloGamePlayView")
                .position(x:geometry.size.width/2,y:geometry.size.height/2)
        }
    }
}

//#Preview {
//    SoloGamePlayView()
//}
