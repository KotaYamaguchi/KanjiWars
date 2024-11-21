//
//  GachaView.swift
//  Kanji_Wars
//
//  Created by 中村樹 on 2024/10/21.
//

import SwiftUI

struct GachaView: View {
    @Binding var path: NavigationPath
    var body: some View {
        GeometryReader { geometry in
            Button(action: {
                path.removeLast(path.count)
            }, label: {
                Text("戻る")
            })
            .position(x:geometry.size.width/10,y:geometry.size.height/12)
            
            Text("GachaView")
                .position(x:geometry.size.width/2,y:geometry.size.height/2)
        }
    }
}


//#Preview {
//    GachaView()
//}
