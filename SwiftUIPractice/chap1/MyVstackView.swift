//
//  MyVstackView.swift
//  SwiftUIPractice
//
//  Created by 윤진영 on 2020/10/11.
//

import SwiftUI

struct MyVstackView: View {
    // 데이터를 연동시킨다
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    
    var body: some View {
        VStack {
             Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
             Text("2!")
               .fontWeight(.bold)
                .font(.system(size: 60))
             Text("3!")
              .fontWeight(.bold)
                .font(.system(size: 60))
        } // Vstack
            .background(self.isActivated ? Color.green : Color.red)
            .padding(self.isActivated ? 10 : 0)
    }
}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
