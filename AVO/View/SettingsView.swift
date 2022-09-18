



import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTIES
    @State private var enableNotification:Bool = true
    @State private var backgroundRefresh :Bool = false
 // MARK: - body
  var body: some View {
      VStack(alignment: .center, spacing: 0) {
          // MARK: - Header
          VStack(alignment: .center, spacing: 5) {
              Image("avocado")
                  .resizable()
                  .scaledToFit()
                  .padding(.top)
                  .frame(width: 100, height: 100, alignment: .center)
                  .shadow(color: Color("ColorBlackTransparent"), radius: 8, x: 0, y: 4)
              
              
              Text("hello from Setting".uppercased())
                  .font(.system(.title, design: .serif))
                  .fontWeight(.bold)
              .foregroundColor(Color("ColorGreenAdaptive"))
          }//:VStack
          .padding()
          // MARK: - Form
          Form {
              // MARK: - Section 1
              Section(header:Text("General Settings")) {
                  Toggle(isOn: $enableNotification) {
                      Text("Enable notification")
                  }
                  
                  Toggle(isOn: $backgroundRefresh) {
                      Text("Background refresh")
                  }
              }
              // MARK: - Section 2
              Section(header: Text("Application")) {
                  if enableNotification {
                      HStack {
                          Text("Product")
                              .foregroundColor(.gray)
                          Spacer()
                          Text("Avocado Recipes")
                      }
                      HStack {
                          Text("Compatibility")
                              .foregroundColor(.gray)
                          Spacer()
                          Text("iPhone & iPad ")
                      }
                      HStack {
                          Text("Developer")
                              .foregroundColor(.gray)
                          Spacer()
                          Text("Hazem")
                      }
                      HStack {
                          Text("Designer")
                              .foregroundColor(.gray)
                          Spacer()
                          Text("Robert Petras")
                      }
                      HStack {
                          Text("Website")
                              .foregroundColor(.gray)
                          Spacer()
                          Text("earytech.com")
                      }
                      
                      HStack {
                          Text("Version")
                              .foregroundColor(.gray)
                          Spacer()
                          Text("1.1.0")
                      }
                  } else {
                      HStack {
                          Text("Personal message")
                              .foregroundColor(.gray)
                          Spacer()
                          Text("Happy Codding")
                      }
                  }
                 
              }
              
              
          }
          
      }//:VStack
      .frame(maxWidth: 640)
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
