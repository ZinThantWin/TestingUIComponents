import SwiftUI

struct CircleWaveLoading: View {
    let screenWidth : Double = UIScreen.main.bounds.width
    @State var xAnimating : Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                GeometryReader { geometry in
                                    Text("Loading ..")
                                        .font(.system(size: 100))
                                        .minimumScaleFactor(0.01)
                                        .lineLimit(1)
                                        .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                                        .frame(width: xAnimating ? screenWidth * 0.2 : screenWidth * 0.05, height: geometry.size.height)
                                }
                Circle()
                    .stroke(Color.green,style: StrokeStyle(lineWidth: xAnimating ? 10 : 3))
                    .frame(width: xAnimating ? screenWidth * 0.5 : screenWidth * 0.05)
                    .onAppear{
                        animateForever()
                    }
            
                
                Circle()
                    .stroke(Color.gray,style: StrokeStyle(lineWidth: 10))
                    .frame(width: screenWidth * 0.5)
            }
        }
        .navigationTitle("CircleWaveLoading")
    }
    
    private func animateForever(){
        withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)){
            xAnimating.toggle()
        }
    }
}

#Preview {
    CircleWaveLoading()
}
