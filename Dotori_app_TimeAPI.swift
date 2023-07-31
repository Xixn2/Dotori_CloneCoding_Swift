 @State private var currentTime = Date()
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()

    private func updateTime() {
        currentTime = Date()
    }

.onReceive(timer) { _ in
            updateTime()
        }