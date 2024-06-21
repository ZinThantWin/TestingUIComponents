import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView{
            List{
                EachLink(title: "Circular Loading", destination: CircularLoading())
                EachLink(title: "Capsule Loading", destination: CapsuleLoading())
                EachLink(title: "Cirlce Wave Loading", destination: CircleWaveLoading())
                EachLink(title: "Arc Loading", destination: ArcLoading())
            }
        }.navigationTitle("Home Page")
    }
}

#Preview {
    HomePage()
}
