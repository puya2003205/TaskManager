import SwiftUI

@main
struct TaskManagerApp: App {
    @State private var navigationPath = [NavigationScreen]()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigationPath) {
                LoginView(goToLogin: { navigationPath.append(.login)} )
            }
            
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
