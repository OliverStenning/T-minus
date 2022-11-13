import SwiftUI

struct RocketsView: View {
    var body: some View {
        NavigationView {
            Text("Hello, Rockets!")
                .navigationTitle("Rockets")
        }
    }
}

struct RocketsView_Previews: PreviewProvider {
    static var previews: some View {
        RocketsView()
    }
}
