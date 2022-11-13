import SwiftUI

struct LaunchesView: View {
    var body: some View {
        NavigationView {
            Text("Hello, Launches!")
                .navigationTitle("Launches")
        }
    }
}

struct LaunchesView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesView()
    }
}
