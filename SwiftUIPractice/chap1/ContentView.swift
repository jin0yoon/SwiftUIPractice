//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by 윤진영 on 2020/10/11.
//

import SwiftUI

struct ContentView: View {
    
    // @State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    
                } // Hstack
                    .padding(isActivated ? 50.0 : 10.0)
                    //
                    .background(isActivated ? Color.yellow : Color.black)
                   // 탭 재스쳐 추가
                    .onTapGesture {
                        print("HStack 이 클릭되었다.")
                        
                        // 애니메이션과 함께
                        withAnimation {
                            // toggle() true 이면 false 로 false 이면 true
                            self.isActivated.toggle()
                        }
                }// Hstack
                
                // 네비게이션 버튼(링크)
                NavigationLink(destination: MyTextView(isActivated: $isActivated) ){
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    
                } .padding(.top, 50)
            }
            
        } // NavigationView
        
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
