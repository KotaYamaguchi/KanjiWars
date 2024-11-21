import SwiftUI

struct FirstGradeStageView: View {
    @Binding var path: NavigationPath
    @State var clearStageCount:Int = 0
    @State var getStarCount:Int = 0
    var gradeNumber = 1 //学年情報、本来はSelectStageViewから持ってくる
    @State var stageNumber = 0
    @State var isShowingModal: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Button(action: {
                    path.removeLast()
                }, label: {
                    Text("戻る")
                })
                .position(x:geometry.size.width/10,y:geometry.size.height/12)
                
                Text("\(getStarCount)／30")
                    .font(Font.system(size:30))
                    .position(x:geometry.size.width/9,y:geometry.size.height/6)
                Button(action: {
                    isShowingModal.toggle()
                }, label: {
                    Text("1")
                })
            }
            .sheet(isPresented: $isShowingModal, content: {
                AchieveModalView(path: $path, isShowingModal: $isShowingModal)
            })
        }
    }
}

struct AchieveModalView: View {
    @Binding var path: NavigationPath
    @Binding var isShowingModal: Bool
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Text("ステージ１")
                    .position(x:geometry.size.width/2,y:geometry.size.height/4)
                //別クラスで管理する実績（星ゲット条件）の表示
                Button(action: {
                    isShowingModal = false
                    path.append(ViewIdentifier.SoloGamePlayView)
                }, label: {
                    Text("挑戦する！")
                })
                .position(x:geometry.size.width/2,y:geometry.size.height/2)
            }
        }
    }
}
