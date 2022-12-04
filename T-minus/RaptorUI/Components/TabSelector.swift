import SwiftUI
import UIKit

struct TabSelector: View {
    
    init(selectedTab: Binding<TabItem>) {
        self._selectedTab = selectedTab
        
        UISegmentedControl.appearance().selectedSegmentTintColor = Asset.Colors.accentColor.color
        UISegmentedControl.appearance().backgroundColor = Asset.Colors.secondaryBackgroundColor.color
        UISegmentedControl.appearance().setTitleTextAttributes(
            [.font: FontStyle.callout.uiFont,
            .foregroundColor: UIColor.white],
            for: .normal
        )
        
        
    }
    
    var body: some View {
        Picker("", selection: $selectedTab) {
            Text("Upcoming").tag(TabItem.upcoming)
            Text("Recent").tag(TabItem.recent)
        }
        .pickerStyle(.segmented)
        .frame(height: 40)
    }
    
    @Binding private var selectedTab: TabItem
    
}

enum TabItem: Hashable {
    case upcoming
    case recent
}

struct TabSelector_Previews: PreviewProvider {
    static var previews: some View {
        TabSelector(selectedTab: .constant(.upcoming))
    }
}
