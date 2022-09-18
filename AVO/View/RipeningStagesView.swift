//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct RipeningStagesView: View {
  // MARK: - PROPERTIES
    let ripeningStages :[Ripening] = ripeningData

  
  var body: some View {
      ScrollView(.horizontal,showsIndicators: false) {
          
          VStack{
              Spacer()
              HStack(alignment: .center, spacing: 25) {
                  ForEach(ripeningStages) {ripen in
                      RipeningView(ripening: ripen)
                  }
              }//:HStack
              .padding(.vertical)
              .padding(.horizontal, 25)
              Spacer()
          }//:VStack
      }
      .edgesIgnoringSafeArea(.all)
  }
}

struct RipeningStagesView_Previews: PreviewProvider {
  static var previews: some View {
      RipeningStagesView()
          .preferredColorScheme(.dark)
  }
}
