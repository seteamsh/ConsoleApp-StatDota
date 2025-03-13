class Application {
    let searchPlayer = SearchPlayer()
    let favorites = Favorites()
    let exit = Exit()
    func run() {
        
        print("Добро пожаловать в StatDota")
        while true {
            
            print("1. Поиск игрока по ID")
            print("2. Избранные")
            print("3. Выход")
            let getAction = Actions.getDataFromUser("Введите номер действия:")
            switch getAction {
            case "1": searchPlayer.run()
            case "2": favorites.showFavorites()
            default : exit.exit()
            }
        }
    }
}
