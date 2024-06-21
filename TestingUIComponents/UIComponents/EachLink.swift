import SwiftUI

struct EachLink<Destination: View>: View {
    let title : String
    let destination : Destination
    var body: some View {
        NavigationLink{
            destination
        }label: {
            Text(title)
        }
    }
}
