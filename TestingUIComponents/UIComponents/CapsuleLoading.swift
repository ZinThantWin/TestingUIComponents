//
//  CapsuleLoading.swift
//  TestingUIComponents
//
//  Created by ကင်ဇို on 21/06/2024.
//

import SwiftUI

struct CapsuleLoading: View {
    @State var xAnimating : Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                Capsule()
                    .trim(from: 0,to: xAnimating ? 1 : 0)
                    .stroke(Color.green,style: StrokeStyle(lineWidth: 5))
                    .frame(width: 70, height: UIScreen.main.bounds.width * 0.5)
                    .rotationEffect(.degrees(-90))
                    .onAppear{
                        animateForever()
                    }
                Text("Loading..")
            }
        }.navigationTitle("CapsuleLoading")
        
    }
    
    private func animateForever(){
        withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)){
            xAnimating.toggle()
        }
    }
}

#Preview {
    CapsuleLoading()
}
