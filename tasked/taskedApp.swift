//
//  taskedApp.swift
//  tasked
//
//  Created by Zheer Barzan on 2/11/24.
//

import SwiftUI

@main
struct taskedApp: App {
    @StateObject var listViewModel: ListViewModel = .init()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }.navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(listViewModel)
        }
    }
}
