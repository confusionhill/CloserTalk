//
//  HalfModal.swift
//  chatApp
//
//  Created by Farhandika Zahrir Mufti guenia on 24/06/21.
//

import Foundation
import SwiftUI

struct BottomSheet<SheetContent: View>: ViewModifier {
@Binding var isPresented: Bool
let sheetContent: () -> SheetContent

func body(content: Content) -> some View {
    ZStack {
        content

        if isPresented {
            VStack {
                Spacer()

                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            withAnimation(.easeInOut) {
                                self.isPresented = false
                            }
                        }) {
                            Text("done")
                                .padding(.top, 5)
                        }
                    }

                    sheetContent()
                }
                .padding()
            }
            .zIndex(.infinity)
            .transition(.move(edge: .bottom))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}
}

extension View {
    func customBottomSheet<SheetContent: View>(
        isPresented: Binding<Bool>,
        sheetContent: @escaping () -> SheetContent
    ) -> some View {
        self.modifier(BottomSheet(isPresented: isPresented, sheetContent: sheetContent))
    }
}
