//
//  MainTabView.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 05.09.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            WelcomeView()
                .tabItem {
                    Label("Quiz", systemImage: "gamecontroller")
                }
            ControlsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .tint(.yellow)
        .onAppear {
            UITabBar.appearance().backgroundColor = #colorLiteral(red: 0.4707657695, green: 0.365068078, blue: 0.7306838632, alpha: 1)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
