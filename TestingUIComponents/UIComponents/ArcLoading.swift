import SwiftUI

struct ArcLoading : View {
    @State var xAnimating : Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                EachArc(screenRatio: 0.56, arcColor: Color.green, degree: xAnimating ? 0 : -360 * 2, from: 0.1, to: 0.5)
                EachArc(screenRatio: 0.58, arcColor: Color.red, degree: xAnimating ? 0 : 360 * 3, from: 0.3, to: 0.5)
                EachArc(screenRatio: 0.6, arcColor: Color.blue, degree: xAnimating ? 0 : 360*3, from: 0.5, to: 0.8)
                EachArc(screenRatio: 0.63, arcColor: Color.pink, degree: xAnimating ? 0 : 360 * 3, from: 0.1, to: 0.6)
                EachArc(screenRatio: 0.66, arcColor: Color.yellow, degree: xAnimating ? 0 : 360*3, from: 0.3, to: 0.8)
                EachArc(screenRatio: 0.7, arcColor: Color.green, degree: xAnimating ? 0 : -360, from: 0.1, to: 0.5)
                Text("Loading..")
            }.onAppear{
                repeatForever()
            }
        }
        .navigationTitle("Arc Loading")
    }
    
    private func repeatForever(){
        withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: false)) {
            xAnimating.toggle()
        }
    }
}

struct EachArc: View {
    let screenRatio : Double
    let arcColor : Color
    let arcWidth : Double = 3
    let degree : Double
    @State var from : Double
    @State var to : Double
    let screenWidth : Double = UIScreen.main.bounds.width
    
    var body: some View {
        Circle()
            .trim(from: from,to: to)
            .stroke(arcColor,style: StrokeStyle(lineWidth: arcWidth))
            .frame(width: screenWidth * screenRatio)
            .rotationEffect(.degrees(degree))
        
    }
}

#Preview {
    ArcLoading()
}
