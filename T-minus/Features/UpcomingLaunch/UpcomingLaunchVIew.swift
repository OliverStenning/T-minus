import SwiftUI

struct UpcomingLaunchVIew: View {
    var body: some View {
        ZStack {
//            Image(asset: Asset.placeholderBackground2)
//                .edgesIgnoringSafeArea(.all)
//                .matchedGeometryEffect(id: "Background", in: animation)
//
//            LinearGradient(
//                colors: [
//                    Asset.Colors.backgroundColor.swiftUIColor.opacity(gradientOpacity),
//                    Asset.Colors.backgroundColor.swiftUIColor
//                ],
//                startPoint: .top,
//                endPoint: .bottom
//            )
//                .edgesIgnoringSafeArea(.all)
//                .animation(.easeInOut(duration: 1.0), value: gradientOpacity)

            if !showDetails {
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        CapsuledText(text: "CRS 26", font: FontStyle.largeTitle.font)
                            .matchedGeometryEffect(id: "Title", in: animation)

                        Text("Falcon Heavy")
                            .foregroundColor(.white)
                            .font(FontStyle.title2.font)
//                            .transition(.scale)
                            .matchedGeometryEffect(id: "Rocket", in: animation)

                        Text("T- 3 days, 14 hours")
                            .foregroundColor(.init(white: 0.6))
                            .font(FontStyle.title2.font)
                            .matchedGeometryEffect(id: "Date", in: animation)

                        Spacer()

                    }
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 100)
            } else {
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Spacer()

                        CapsuledText(text: "CRS 26", font: FontStyle.largeTitle.font)
                            .matchedGeometryEffect(id: "Title", in: animation)

                        Text("Falcon Heavy")
                            .foregroundColor(.white)
                            .font(FontStyle.title2.font)
//                            .transition(.scale)
                            .matchedGeometryEffect(id: "Rocket", in: animation)

                        Text("T- 3 days, 14 hours")
                            .foregroundColor(.init(white: 0.6))
                            .font(FontStyle.title2.font)
                            .matchedGeometryEffect(id: "Date", in: animation)
                    }
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 100)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            withAnimation {
                showDetails.toggle()
            }
////            gradientOpacity = showDetails ? 0.75 : 0
        }
    }
    
    // MARK: - Private
    @Namespace private var animation
    @State private var showDetails = false
    @State private var gradientOpacity: CGFloat = 0
    
}

struct UpcomingLaunchVIew_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingLaunchVIew()
    }
}
