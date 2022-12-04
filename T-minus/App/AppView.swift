import SwiftUI

struct AppView: View {
    
    // MARK: - Lifecycle
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = Asset.Colors.accentColor.color
        UISegmentedControl.appearance().backgroundColor = Asset.Colors.secondaryBackgroundColor.color
        UISegmentedControl.appearance().setTitleTextAttributes(
            [.font: FontStyle.callout.uiFont,
            .foregroundColor: UIColor.white],
            for: .normal
        )
    }
    
    // MARK: - Public
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $selectedTab) {
                UpcomingLaunchVIew()
                    .tag(TabItem.upcoming)
                
                RecentLaunchView()
                    .tag(TabItem.recent)
            }
            .animation(.easeInOut, value: selectedTab)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            TabSelector(selectedTab: $selectedTab)
            .padding(.bottom, 32)
            .padding(.horizontal, 48)
            
        }
        .background(Asset.Colors.backgroundColor.swiftUIColor)
        .ignoresSafeArea(.all)
    }
    
    // MARK: - Private
    
    @State private var selectedTab: TabItem = .upcoming
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
