import SwiftUI

struct PhotosView: View {
    var body: some View {
        NavigationView {
            Text("Hello, Photos!")
                .navigationTitle("Photos")
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
