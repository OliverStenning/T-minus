import SwiftUI

struct AppView: View {
    
    // MARK: - Lifecycle
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = Asset.Colors.accentColor.color
        UISegmentedControl.appearance().backgroundColor = Asset.Colors.secondaryBackgroundColor.color
        UISegmentedControl.appearance().setTitleTextAttributes(
            [.font: FontBook.shared.font(for: .archivoSemiBold, size: 14),
            .foregroundColor: UIColor.white],
            for: .normal
        )
    }
    
    // MARK: - Public
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $selectedTab) {
                UpcomingLaunchVIew()
                    .tag(TabItems.upcoming)
                
                RecentLaunchView()
                    .tag(TabItems.recent)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Picker("", selection: $selectedTab) {
                Text("Upcoming").tag(TabItems.upcoming)
                Text("Recent").tag(TabItems.recent)
            }
            .pickerStyle(.segmented)
            .padding(.bottom, 32)
            .padding(.horizontal, 32)
            
        }
        .background(Asset.Colors.backgroundColor.swiftUIColor)
        .ignoresSafeArea(.all)
    }
    
    // MARK: - Private
    
    @State private var selectedTab: TabItems = .upcoming
}

private enum TabItems: Hashable {
    case upcoming
    case recent
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
