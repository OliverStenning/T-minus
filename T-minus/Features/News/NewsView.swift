import SwiftUI

struct NewsView: View {
    var body: some View {
        NavigationView {
            Text("Hello, News!")
                .navigationTitle("News")
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
