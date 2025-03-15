class Actions {
    static func getDataFromUser(_ text: String) -> String {
        print(text)
        let action = readLine()
        guard let action = action else { return "Неизвестная команда" }
        return action
    }
}
