class Application {
    var searchPlayer = SearchPlayer()
    var showFavorites = ShowFavorites()
    static var favorites = [Player]()

    let exit = Exit()
    func run() {
        
        print("Добро пожаловать в StatDota")
        while true {
            
            print("1. Поиск игрока по ID")
            print("2. Избранные")
            print("3. Выход")
            let getAction = Actions.getDataFromUser("Введите номер действия:")
            switch getAction {
            case "1": searchPlayer.searchID()
            case "2": showFavorites.run()
            default : exit.exit()
            }
        }
    }
}
