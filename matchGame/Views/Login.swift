//
//  Login.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/30.
//

import SwiftUI
import FirebaseAuth

struct Login: View {
  @State var email: String = ""
  @State var password: String = ""
  @StateObject var loginViewModel = LoginViewModel()
  var body: some View {
    NavigationStack {
      VStack {
        Image(systemName: "lock.circle")
          .resizable()
          .frame(width: 80, height: 80)
          .foregroundColor(.blue)
          .padding(.bottom, 20)
        
        TextField("メールアドレス", text: $email)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding(.horizontal, 30)
          .padding(.bottom, 10)
        
        SecureField("パスワード", text: $password)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding(.horizontal, 30)
          .padding(.bottom, 20)
        
        Button(action: {
          loginViewModel.signIn(email: email, password: password)
        }) {
          Text("ログイン")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.horizontal, 30)
        }
      }
      NavigationLink(
        destination: Text("Destination"),
        isActive: Binding(
          get: { loginViewModel.isAuth },
          set: { loginViewModel.isAuth = $0 }
        ),
        label: {
          EmptyView()
        }
      )
    }
  }
}

#Preview {
  Login()
}
