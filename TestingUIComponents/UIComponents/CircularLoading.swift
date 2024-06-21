import SwiftUI
import Foundation

struct CircularLoading : View {
    @State var xAnimated : Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                Circle()
                    .trim(from: 0,to: xAnimated ? 1:0)
                    .stroke(Color.green,style: StrokeStyle(lineWidth: 3,dash: [1.5]))
                    .frame(width: UIScreen.main.bounds.width * 0.7).onAppear{
                        animateForever()
                    }
                Circle()
                    .trim(from: 0,to: xAnimated ? 1:0)
                    .stroke(Color.green,style: StrokeStyle(lineWidth: 40,dash: [1.5]))
                    .frame(width: UIScreen.main.bounds.width * 0.55)
                    .opacity(0.1)
                Text("Loading..")
            }
        }.navigationTitle("CircularLoading")
    }
    
    private func animateForever() {
        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                self.xAnimated.toggle()
            }
        }
}


#Preview {
    CircularLoading()
}
