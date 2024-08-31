//
//  Home.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/31.
//

import SwiftUI

struct Home: View {
  @StateObject var homeViewModel = HomeViewModel()
  var body: some View {
    VStack {
      HStack {
        Spacer()
        Button(action: {
          homeViewModel.signOut()
        }) {
          Image(systemName: AppConstant.logoutIcon)
            .font(.system(size: 25))
            .padding()
        }
      }
      VStack {
      }
      .padding()
      Spacer()
    }
  }
}

#Preview {
  Home()
}
