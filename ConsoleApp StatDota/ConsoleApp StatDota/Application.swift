class Application {
    let actions = [SearchPlayer(), Favorites(), Exit()]
    func run() {
        while true {
            print("Добро пожаловать в StatDota")
            let getAction = Actions.getDataFromUser("Введите номер действия:")
            for action in actions {
                action.run()
            }
        }
    }
}
