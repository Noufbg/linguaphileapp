//
//  linguaphileApp.swift
//  linguaphile
//
//  Created by Nouf almandeel on 18/06/1444 AH.
//

import SwiftUI
final class commentCardc: ObservableObject {
    @Published var commentCArd: String = ""
}
@main
struct linguaphileApp: App {
    @StateObject var currentcomment = commentCardc()
    var body: some Scene {
        WindowGroup {
            splashscreen() .environmentObject(currentcomment)        }
    }
}
